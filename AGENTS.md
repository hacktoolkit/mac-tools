# Hacktoolkit Mac tools

This repository is a collection. Implementations live in independent repositories
inside it, registered as submodules, following `../chrome-extensions`.
Work in the relevant tool repository. Do not duplicate its source into the collection.

- Each tool has a README, MIT license, and Makefile with `help`, `test`, and `package`.
- Prefer dependency-light CLI tools that compose through JSON and exit codes.
- Keep progress on stderr and machine-readable results on stdout.
- Access personal app data read-only unless the user explicitly requests a mutation.
- Explain macOS permission requirements accurately; never modify TCC databases.
- Tests use synthetic fixtures in `HOLODECK` (default `~/.holodeck`).
- Open implementation PRs in the tool repository. Update its gitlink here after merging.
- A collection PR that references an unmerged tool commit stays draft until its dependency merges.
