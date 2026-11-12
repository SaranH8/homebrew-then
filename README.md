# THEN for Homebrew

A Homebrew tap for **THEN** — a menu-bar app for macOS that fixes Thai/English wrong-keyboard-layout typing as you type. Type a word with the wrong layout active and THEN converts it to the language you meant, right in any app.

## Install

```sh
brew tap SaranH8/then
brew trust SaranH8/then
brew install --cask then
```

After installing, grant THEN both permissions (macOS treats every build as a new app, so re-check after upgrades):

- System Settings → Privacy & Security → Accessibility ("Device Control and Data Access" on newer macOS) → turn THEN on
- System Settings → Privacy & Security → Input Monitoring → turn THEN on (if THEN is listed there)

## Update

```sh
brew upgrade --cask then
```

## License

Installing is free, but THEN must be activated before it corrects typing: open the THEN menu, choose "Activate…", and enter the license email + serial key you received from Saran.

More about THEN: https://cathunters.com/hub
