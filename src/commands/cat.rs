//! `cat` subcommand

use crate::{Application, RUSTIC_APP, status_err};

use std::io::Write;

use abscissa_core::{Command, Runnable, Shutdown};

use anyhow::Result;

use rustic_core::repofile::{BlobType, FileType};

/// `cat` subcommand
///
/// Output the contents of a file or blob
#[derive(clap::Parser, Command, Debug)]
pub(crate) struct CatCmd {
    #[clap(subcommand)]
    cmd: CatSubCmd,
}

/// `cat` subcommands
#[derive(clap::Subcommand, Debug)]
enum CatSubCmd {
    /// Display a tree blob
    TreeBlob(IdOpt),
    /// Display a data blob
    DataBlob(IdOpt),
    /// Display the config file
    Config,
    /// Display an index file
    Index(IdOpt),
    /// Display a snapshot file
    Snapshot(IdOpt),
    /// Display a tree within a snapshot
    Tree(TreeOpts),
    /// Display the masterkey
    Masterkey,
    /// Display a key file (as stored, plain JSON)
    Key(IdOpt),
    /// Display a lock file
    Lock(IdOpt),
    /// Write a pack file to stdout (raw bytes)
    Pack(IdOpt),
    /// Write a blob (data or tree) to stdout
    Blob(IdOpt),
}

#[derive(Default, clap::Parser, Debug)]
struct IdOpt {
    /// Id to display
    id: String,
}

#[derive(clap::Parser, Debug)]
struct TreeOpts {
    /// Snapshot/path of the tree to display
    #[clap(value_name = "SNAPSHOT[:PATH]")]
    snap: String,
}

impl Runnable for CatCmd {
    fn run(&self) {
        if let Err(err) = self.inner_run() {
            status_err!("{}", err);
            RUSTIC_APP.shutdown(Shutdown::Crash);
        };
    }
}

impl CatCmd {
    fn inner_run(&self) -> Result<()> {
        let config = RUSTIC_APP.config();
        let data = match &self.cmd {
            CatSubCmd::Config => config
                .repository
                .run_open(|repo| Ok(repo.cat_file(FileType::Config, "")?))?,
            CatSubCmd::Index(opt) => config
                .repository
                .run_open(|repo| Ok(repo.cat_file(FileType::Index, &opt.id)?))?,
            CatSubCmd::Snapshot(opt) => config
                .repository
                .run_open(|repo| Ok(repo.cat_file(FileType::Snapshot, &opt.id)?))?,
            CatSubCmd::TreeBlob(opt) => config
                .repository
                .run_indexed(|repo| Ok(repo.cat_blob(BlobType::Tree, &opt.id)?))?,
            CatSubCmd::DataBlob(opt) => config
                .repository
                .run_indexed(|repo| Ok(repo.cat_blob(BlobType::Data, &opt.id)?))?,
            CatSubCmd::Tree(opt) => config.repository.run_indexed(|repo| {
                Ok(repo.cat_tree(&opt.snap, |sn| config.snapshot_filter.matches(sn))?)
            })?,
            CatSubCmd::Masterkey => config
                .repository
                .run_open(|repo| Ok(serde_json::to_vec(&repo.key())?.into()))?,
            CatSubCmd::Key(opt) => config
                .repository
                .run_open(|repo| Ok(repo.cat_file_raw(FileType::Key, &opt.id)?))?,
            CatSubCmd::Lock(opt) => config
                .repository
                .run_open(|repo| Ok(repo.cat_file(FileType::Lock, &opt.id)?))?,
            CatSubCmd::Pack(opt) => {
                let data = config
                    .repository
                    .run_open(|repo| Ok(repo.cat_file_raw(FileType::Pack, &opt.id)?))?;
                std::io::stdout().write_all(&data)?;
                return Ok(());
            }
            CatSubCmd::Blob(opt) => {
                let data = config
                    .repository
                    .run_indexed(|repo| Ok(repo.cat_blob_any(&opt.id)?))?;
                std::io::stdout().write_all(&data)?;
                return Ok(());
            }
        };
        println!("{}", String::from_utf8(data.to_vec())?);

        Ok(())
    }
}
