# 48Nauts Homebrew Tap

Homebrew cask for [xNAUT](https://github.com/48Nauts-Operator/xNaut) — an
AI-enhanced native terminal with worktree review and agent orchestration.

## Install

```sh
brew install --cask 48Nauts-Operator/homebrew-tap/xnaut
```

Or tap first, then install by short name:

```sh
brew tap 48Nauts-Operator/homebrew-tap
brew install --cask xnaut
```

## Upgrade

```sh
brew upgrade --cask xnaut
```

xNAUT also self-updates in-app, so `auto_updates` is set on the cask.

## Uninstall

```sh
brew uninstall --cask xnaut          # remove the app
brew uninstall --zap --cask xnaut    # also remove app data / preferences
```

---

The cask points at the signed dmg published on each tagged
[GitHub release](https://github.com/48Nauts-Operator/xNaut/releases)
(`xNAUT-<version>-macos-<arch>.dmg`). Apple Silicon and Intel are both supported.
