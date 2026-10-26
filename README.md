# Homebrew Tap for QuickFlow

Install QuickFlow (menu bar voice-to-text dictation, 100% on-device) with:

```bash
brew tap morpheus762228/quickflow
brew install --cask quickflow
```

The cask downloads the app from the official
[QuickFlow releases](https://github.com/morpheus762228/quickflow/releases)
and installs it into `/Applications`.

> **Note:** QuickFlow is ad-hoc signed and not notarized yet, so this cask
> removes the quarantine attribute after install — no Gatekeeper dialog on
> first launch. Grant Microphone and Accessibility when prompted.
