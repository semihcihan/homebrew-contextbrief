cask "contextbrief" do
  version "1.0.8"
  sha256 "f3049fa4ab0e71b2c70e9c6669559109a856d9051ee1cee726e970aa5276e00f"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.8/ContextBrief.dmg"
  name "Context Brief"
  desc "Local-first macOS menu bar app for collecting and densifying context"
  homepage "https://github.com/semihcihan/contextbrief"

  depends_on macos: ">= :ventura"

  app "ContextBrief.app"

  zap trash: [
    "~/Library/Application Support/ContextBrief",
    "~/Library/Preferences/com.semihcihan.contextgenerator.plist",
  ]
end
