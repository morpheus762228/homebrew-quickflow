cask "quickflow" do
  version "3.0"
  sha256 "f7aceaa7b4b85c518f0c816f2e9a67102e2864ba2b95605d6169ee173fc44b83"

  url "https://github.com/morpheus762228/quickflow/releases/download/v#{version}/QuickFlow-#{version}.dmg",
      verified: "github.com/morpheus762228/quickflow/"
  name "QuickFlow"
  desc "Menu bar voice-to-text dictation, 100% on-device"
  homepage "https://github.com/morpheus762228/quickflow"

  depends_on macos: :ventura

  app "QuickFlow.app"

  # QuickFlow is ad-hoc signed (not notarized), so a quarantined copy is
  # blocked by Gatekeeper on macOS 15. Drop the quarantine attribute
  # Homebrew applies to the downloaded app so first launch is clean.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/QuickFlow.app"]
  end

  caveats "QuickFlow is not notarized; this cask removes the quarantine\n" \
          "attribute after install so Gatekeeper will not block first launch.\n" \
          "On first launch, grant Microphone and Accessibility when prompted."
end
