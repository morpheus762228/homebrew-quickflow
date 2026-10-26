# Homebrew Tap for QuickFlow

Install QuickFlow (menu bar voice-to-text dictation, 100% on-device) with:

```bash
brew tap morpheus762228/quickflow
brew trust morpheus762228/quickflow   # required by Homebrew 6 for third-party casks
brew install --cask quickflow
```

Requires Homebrew 6 or newer.

The cask downloads the app from the official
[QuickFlow releases](https://github.com/morpheus762228/quickflow/releases)
and installs it into `/Applications`.

> **Note:** QuickFlow is ad-hoc signed and not notarized yet, so this cask
> removes the quarantine attribute after install — no Gatekeeper dialog on
> first launch. Grant Microphone and Accessibility when prompted.
