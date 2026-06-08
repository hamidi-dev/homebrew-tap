# hamidi-dev/homebrew-tap

Homebrew tap for [OpenTab](https://github.com/hamidi-dev/opentab) — a local,
zero-dependency terminal UI for browsing your [OpenCode](https://opencode.ai)
spend, read straight from OpenCode's own SQLite database.

## Install

```sh
brew install hamidi-dev/tap/opentab
```

or, equivalently:

```sh
brew tap hamidi-dev/tap
brew install opentab
```

Upgrade with `brew upgrade opentab`.

## Notes

OpenTab uses Python's `curses`, which is Unix-only. This tap works on macOS and
Linux (Linuxbrew). On Windows, run it from WSL — see the
[main README](https://github.com/hamidi-dev/opentab#windows).
