# 48Nauts Homebrew Tap

Homebrew cask for [xNAUT](https://github.com/48Nauts-Operator/xNaut) — an
AI-enhanced native terminal with worktree review and agent orchestration.

## Install

```sh
brew tap 48Nauts-Operator/tap
brew trust 48nauts-operator/tap      # recent Homebrew requires trusting 3rd-party casks
brew install --cask xnaut
```

The `brew trust` step is a one-time-per-machine confirmation that recent
Homebrew requires before it will run a cask from a tap outside its official
repositories. Without it you get `Refusing to load cask … from untrusted tap`.

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
