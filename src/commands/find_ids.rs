//! `find --blob`, `--tree`, `--pack`: where objects are used, like `restic find`.
//!
//! Follows restic 0.19.1 (`cmd/restic/cmd_find.go`): snapshots newest first (`--reverse`:
//! oldest first), trees walked depth-first with the root as `/`, every occurrence of a blob
//! printed, and the walk of a snapshot stopped once as many trees were found as were asked
//! for (when no blobs are searched).

use std::collections::BTreeMap;

use anyhow::{Result, bail};
use rustic_core::{
    DataId, Id, TreeId,
    repofile::{BlobType, IndexFile, NodeType, SnapshotFile},
};
use serde::Serialize;

use crate::repository::IndexedRepo;

/// What the ids given to `find` are.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) enum IdKind {
    Blob,
    Tree,
    Pack,
}

#[derive(Serialize)]
struct Found {
    object_type: &'static str,
    id: String,
    path: String,
    #[serde(skip_serializing_if = "String::is_empty")]
    parent_tree: String,
    snapshot: String,
    time: String,
}

/// Ids searched for: full hex id, or restic's short form (first 8 hex digits).
#[derive(Default)]
struct Wanted {
    ids: Vec<String>,
}

impl Wanted {
    fn matches(&mut self, id: &Id) -> bool {
        let full = id.to_hex().to_string();
        if self.ids.iter().any(|w| *w == full) {
            return true;
        }
        let short = &full[..8];
        if let Some(pos) = self.ids.iter().position(|w| w == short) {
            // like restic, replace the short form with the full id
            self.ids[pos] = full;
            return true;
        }
        false
    }
}

struct Finder<'a> {
    repo: &'a IndexedRepo,
    blobs: Option<Wanted>,
    trees: Option<Wanted>,
    items_found: usize,
    json: bool,
    found: Vec<Found>,
}

struct Done;

impl Finder<'_> {
    fn print(&mut self, tpe: &'static str, id: String, path: &str, parent: String, sn: &SnapshotFile) {
        let found = Found {
            object_type: tpe,
            id,
            path: path.to_string(),
            parent_tree: parent,
            snapshot: sn.id.to_hex().to_string(),
            time: sn.time.strftime("%Y-%m-%dT%H:%M:%S%.f%:z").to_string(),
        };
        if self.json {
            self.found.push(found);
            return;
        }
        println!("Found {tpe} {}", found.id);
        if tpe == "blob" {
            println!(" ... in file {}", found.path);
            println!("     (tree {})", found.parent_tree);
        } else {
            println!(" ... path {}", found.path);
        }
        println!(
            " ... in snapshot {} ({})",
            &found.snapshot[..8],
            sn.time.strftime("%Y-%m-%d %H:%M:%S")
        );
    }

    fn find_tree(&mut self, id: TreeId, path: &str, sn: &SnapshotFile) -> Result<(), Done> {
        let Some(trees) = &mut self.trees else {
            return Ok(());
        };
        if trees.matches(&id) {
            let wanted = trees.ids.len();
            self.print("tree", id.to_hex().to_string(), path, String::new(), sn);
            self.items_found += 1;
            if self.items_found >= wanted && self.blobs.is_none() {
                return Err(Done);
            }
        }
        Ok(())
    }

    fn walk(&mut self, tree_id: TreeId, path: &str, sn: &SnapshotFile) -> Result<Result<(), Done>> {
        let tree = self.repo.get_tree(&tree_id)?;
        for node in &tree.nodes {
            let node_path = if path == "/" {
                format!("/{}", node.name)
            } else {
                format!("{path}/{}", node.name)
            };
            if node.node_type == NodeType::Dir {
                if let Some(subtree) = node.subtree {
                    if let Err(done) = self.find_tree(subtree, &node_path, sn) {
                        return Ok(Err(done));
                    }
                    if let Err(done) = self.walk(subtree, &node_path, sn)? {
                        return Ok(Err(done));
                    }
                }
            } else if node.node_type == NodeType::File {
                for id in node.content.iter().flatten() {
                    let hit = self.blobs.as_mut().is_some_and(|b| b.matches(id));
                    if hit {
                        self.print("blob", id.to_hex().to_string(), &node_path, tree_id.to_hex().to_string(), sn);
                    }
                }
            }
        }
        Ok(Ok(()))
    }

    fn snapshot(&mut self, sn: &SnapshotFile) -> Result<()> {
        if self.find_tree(sn.tree, "/", sn).is_err() {
            return Ok(());
        }
        let _ = self.walk(sn.tree, "/", sn)?;
        Ok(())
    }

    fn print_pack_of(&self, id: &str, tpe: BlobType) {
        let Ok(rid) = id.parse::<Id>() else {
            println!("Note: cannot find pack for object '{id}', unable to parse ID");
            return;
        };
        let entry = match tpe {
            BlobType::Data => self.repo.get_index_entry(&DataId::from(rid)),
            BlobType::Tree => self.repo.get_index_entry(&TreeId::from(rid)),
        };
        let name = if tpe == BlobType::Data { "data" } else { "tree" };
        match entry {
            Ok(e) => {
                let pack = e.pack.to_hex().to_string();
                println!("Object belongs to pack {pack}");
                println!(
                    " ... Pack {}: <Blob ({name}) {}, offset {}, length {}, uncompressed length {}>",
                    &pack[..8],
                    id.get(..8).unwrap_or(id),
                    e.location.offset,
                    e.location.length,
                    e.location.uncompressed_length.map_or(0, |l| l.get())
                );
            }
            Err(_) => println!("Object {name} with type {} not found in the index", id.get(..8).unwrap_or(id)),
        }
    }
}

/// Blobs and trees stored in the given packs, from the index.
fn packs_to_ids(repo: &IndexedRepo, packs: &[String]) -> Result<(Wanted, Wanted)> {
    let mut left: Vec<String> = packs.to_vec();
    let mut blobs = Wanted::default();
    let mut trees = Wanted::default();
    let mut seen: BTreeMap<String, ()> = BTreeMap::new();
    for file in repo.stream_files::<IndexFile>()? {
        let (_, index) = file?;
        for pack in index.packs {
            let full = pack.id.to_hex().to_string();
            let hit = left.iter().any(|p| *p == full || *p == full[..8]);
            if !hit && !seen.contains_key(&full) {
                continue;
            }
            left.retain(|p| *p != full && *p != full[..8]);
            _ = seen.insert(full, ());
            for blob in pack.blobs {
                let id = blob.id.to_hex().to_string();
                match blob.tpe {
                    BlobType::Data => blobs.ids.push(id),
                    BlobType::Tree => trees.ids.push(id),
                }
            }
        }
    }
    if !left.is_empty() {
        left.sort();
        bail!("unable to find pack(s): {left:?}");
    }
    Ok((blobs, trees))
}

/// Run `find` for blob, tree or pack ids over the given snapshots.
pub(crate) fn find_ids(
    repo: &IndexedRepo,
    kind: IdKind,
    ids: &[String],
    mut snapshots: Vec<SnapshotFile>,
    reverse: bool,
    show_pack_id: bool,
    json: bool,
) -> Result<()> {
    let (blobs, trees) = match kind {
        IdKind::Blob => (Some(Wanted { ids: ids.to_vec() }), None),
        IdKind::Tree => (None, Some(Wanted { ids: ids.to_vec() })),
        IdKind::Pack => {
            let (b, t) = packs_to_ids(repo, ids)?;
            (Some(b), Some(t))
        }
    };
    let mut finder = Finder {
        repo,
        blobs,
        trees,
        items_found: 0,
        json,
        found: Vec::new(),
    };
    if reverse {
        snapshots.sort_by(|a, b| a.time.cmp(&b.time));
    } else {
        snapshots.sort_by(|a, b| b.time.cmp(&a.time));
    }
    for sn in &snapshots {
        finder.snapshot(sn)?;
    }
    if json {
        println!("{}", serde_json::to_string(&finder.found)?);
    }
    if show_pack_id {
        let blobs = finder.blobs.take().map(|w| w.ids).unwrap_or_default();
        let trees = finder.trees.take().map(|w| w.ids).unwrap_or_default();
        for id in &blobs {
            finder.print_pack_of(id, BlobType::Data);
        }
        for id in &trees {
            finder.print_pack_of(id, BlobType::Tree);
        }
    }
    Ok(())
}
