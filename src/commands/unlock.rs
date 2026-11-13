//! `unlock` subcommand

use crate::{Application, RUSTIC_APP, status_err};

use abscissa_core::{Command, Runnable, Shutdown};
use anyhow::Result;

/// `unlock` subcommand
#[derive(clap::Parser, Command, Debug)]
pub(crate) struct UnlockCmd {
    /// Remove all lock files, also those which are not stale
    #[clap(long)]
    remove_all: bool,
}

impl Runnable for UnlockCmd {
    fn run(&self) {
        if let Err(err) = self.inner_run() {
            status_err!("{}", err);
            RUSTIC_APP.shutdown(Shutdown::Crash);
        };
    }
}

impl UnlockCmd {
    fn inner_run(&self) -> Result<()> {
        let config = RUSTIC_APP.config();
        // a stale exclusive lock must not stop us from opening the repository to remove it
        let mut repo_opts = config.repository.clone();
        repo_opts.repo.ignore_restic_locks = true;
        repo_opts.run_open(|repo| {
            let removed = repo.unlock(self.remove_all)?;
            println!("successfully removed {removed} locks");
            Ok(())
        })
    }
}
