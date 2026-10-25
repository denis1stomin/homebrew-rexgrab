# homebrew-rexgrab

Homebrew tap for [RexGrab](https://github.com/denis1stomin/rexgrab), a native macOS screen/audio recorder.

## Install

```sh
brew tap denis1stomin/rexgrab
brew install --cask rexgrab
```

Or in one line:

```sh
brew install --cask denis1stomin/rexgrab/rexgrab
```

## Updating this tap for a new RexGrab release

After tagging and publishing a new RexGrab release (`vX.Y.Z`), update `Casks/rexgrab.rb`:

1. Bump `version` to the new `X.Y.Z`.
2. Recompute the sha256 of the new release zip:
   ```sh
   curl -sL -o RexGrab-vX.Y.Z-macOS.zip "https://github.com/denis1stomin/rexgrab/releases/download/vX.Y.Z/RexGrab-vX.Y.Z-macOS.zip"
   shasum -a 256 RexGrab-vX.Y.Z-macOS.zip
   ```
3. Replace the `sha256` value in the cask with that output.
4. Commit and push.

No prerelease (`-rc.N`) tags should be pointed to from this tap — only full `vX.Y.Z` releases.
