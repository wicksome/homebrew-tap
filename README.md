# homebrew-tap

Homebrew casks for wicksome's apps.

```sh
brew tap wicksome/tap
brew trust wicksome/tap          # Homebrew 7+ loads only trusted third-party taps
brew install --cask quick-mermaid
```

In a Brewfile:

```ruby
tap "wicksome/tap", trusted: true
cask "wicksome/tap/quick-mermaid"
```

| Cask | App |
| --- | --- |
| `quick-mermaid` | [QuickMermaid](https://github.com/wicksome/quick-mermaid) — renders Mermaid/PlantUML source; installs the `qmmd` CLI |
