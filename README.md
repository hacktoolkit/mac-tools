# Hacktoolkit Mac tools

Free, open-source software for Mac by [Hacktoolkit](https://github.com/hacktoolkit).
Small tools that work on their own and compose into useful pipelines.

| Tool | What it does |
| --- | --- |
| [Voice Memo Transcriber](https://github.com/hacktoolkit/voice-memo-transcriber) | Find Apple Voice Memos by title and transcribe audio locally; export text, subtitles, and JSON. |

## First tool

```sh
git clone --recurse-submodules https://github.com/hacktoolkit/mac-tools.git
cd mac-tools/voice-memo-transcriber
./setup-access
make install
./transcribe --memo 'Project feedback from Alex' --format all --language en
```

`setup-access` opens the macOS permission settings and checks access after you grant it.
Transcription runs on your Mac. The first use downloads a speech model.

## Collection layout

Like `chrome-extensions`, this is a collection of independently maintained tools.
Each tool is a Git submodule with its own implementation, tests, README, Makefile,
and license. Work inside the individual tool repository and open its PR there.
After that PR merges, update the submodule pointer in a separate collection PR.

If you cloned without submodules, run `git submodule update --init --recursive`.
For a new tool, publish its own repository, then register it here with
`git submodule add https://github.com/hacktoolkit/<tool>.git <tool>` and add it to
the table above. Pin tools to reviewed commits; do not track a moving branch.

## Development

Run `make help` in the collection or an individual tool. Tests use isolated fixtures
under the holodeck (`HOLODECK` overrides `~/.holodeck`) and never modify your Voice Memos library.
Prefer command-line interfaces, structured output, few dependencies, and explicit access diagnostics.

MIT licensed. Speech model weights and dependencies retain their own licenses.
