# homebrew-canonry

Homebrew tap for [canonry](https://github.com/AINYC/canonry), the agent first AEO operating platform

## Install

```bash
brew install ainyc/canonry/canonry
```

Or in two steps:

```bash
brew tap ainyc/canonry
brew install canonry
```

## Update

```bash
brew upgrade canonry
```

## Uninstall

```bash
brew uninstall canonry
brew untap ainyc/canonry
```

## Notes

This formula installs canonry on top of Homebrew's `node`. If you manage Node
yourself with nvm/fnm/asdf, that copy of Node will not be used by the formula.

The formula tracks the latest published version of `@ainyc/canonry` on npm and
is bumped automatically by the `Bump formula` workflow when a new version is
published.
