# 48Nauts Homebrew Tap

Homebrew packages for:

- [NautGate](https://github.com/48Nauts-Operator/NautGate), a memory-aware LLM
  gateway with routing, capture, cost tracking, and an auditable call history.
- [xNAUT](https://github.com/48Nauts-Operator/xNaut), an AI-enhanced native
  terminal with worktree review and agent orchestration.

## Install

```sh
brew tap 48Nauts-Operator/tap
brew install nautgate

# Or install the xNAUT desktop app:
brew trust 48nauts-operator/tap      # recent Homebrew requires trusting 3rd-party casks
brew install --cask xnaut
```

The `brew trust` step applies to the xNAUT cask. It is a one-time-per-machine
confirmation that recent Homebrew requires before it will run a third-party
cask. It is not needed for the NautGate formula.

## Upgrade

```sh
brew upgrade nautgate
brew upgrade --cask xnaut
```

xNAUT also self-updates in-app, so `auto_updates` is set on the cask.

## Uninstall

```sh
brew uninstall nautgate
brew uninstall --cask xnaut          # remove the app
brew uninstall --zap --cask xnaut    # also remove app data / preferences
```

---

The xNAUT cask points at the signed dmg published on each tagged
[GitHub release](https://github.com/48Nauts-Operator/xNaut/releases)
(`xNAUT-<version>-macos-<arch>.dmg`). Apple Silicon and Intel are both supported.
