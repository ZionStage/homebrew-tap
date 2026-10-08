# ZionStage Homebrew tap

Homebrew casks for ZionStage apps.

## Install

```sh
brew install --cask zionstage/tap/aerocheat
```

AeroCheat is not notarized by Apple, so macOS blocks its first launch: right-click AeroCheat in Applications and choose **Open**, or allow it in **System Settings > Privacy & Security > Open Anyway**. It requires [AeroSpace](https://github.com/nikitabobko/AeroSpace).

## Updating the cask

On a new AeroCheat release, bump `version` and `sha256` in `Casks/aerocheat.rb`. Get the checksum with:

```sh
curl -sL https://github.com/ZionStage/AeroCheat/releases/download/vX.Y.Z/AeroCheat-X.Y.Z.dmg | shasum -a 256
```
