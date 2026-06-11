# homebrew-tap

Homebrew tap for [chroncal](https://github.com/DouglasdeMoura/chroncal).

```bash
brew tap douglasdemoura/tap
brew install chroncal
```

chroncal ships as a cask (prebuilt binary) for macOS and Linux. On Linux,
casks require Homebrew 4.5 or newer. Installs from the old formula migrate
to the cask automatically on `brew upgrade`.

The cask is generated and pushed by
[GoReleaser](https://github.com/DouglasdeMoura/chroncal/blob/master/.goreleaser.yml)
on each chroncal release — do not edit it by hand.
