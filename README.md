# Homebrew tap for Redcast

[Redcast](https://github.com/alesha-pro/redcast) is a free, open-source Raycast replacement for macOS:
a native launcher with your own AI models, agents, voice and real Raycast extensions.

```sh
brew install --cask alesha-pro/redcast/redcast
```

Redcast is notarized by Apple and needs macOS 26 or later on Apple silicon. It updates itself, so
`brew upgrade` leaves it alone; `brew uninstall --zap --cask redcast` also removes its settings and data.

The cask is bumped by Redcast's release script each time a release is published.
