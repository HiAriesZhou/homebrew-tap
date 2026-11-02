# Homebrew tap

This public repository holds personal Homebrew formulae and casks. Preserve other
products' entries when adding or updating a package. Changes to main go through PRs.

## Howler

- `Casks/howler.rb` installs the signed, notarized universal DMG from Howler's GitHub Release.
- Pin the release version, tag URL and SHA-256. Never use `latest` or `:no_check` for installation.
- macOS 14+ is required. Sparkle handles in-app updates; keep `auto_updates true`.
- After each Howler release is published and verified, update the cask version and
  SHA-256 through a PR. `brew livecheck --cask hiarieszhou/tap/howler` detects newer releases.
- Do not add hooks that delete user preferences, credentials or content.

## Checks

- `brew style --cask hiarieszhou/tap/howler`
- `brew audit --cask --online --strict hiarieszhou/tap/howler`
- `brew fetch --cask hiarieszhou/tap/howler`
- For install verification, use a temporary app directory and leave an existing app
  and its running processes untouched. Clean up only the test installation.

Keep credentials, local paths and one-off audit or task notes out of this repository.
