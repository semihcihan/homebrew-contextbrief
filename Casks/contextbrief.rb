cask "contextbrief" do
  version "1.0.11"
  sha256 "5bc2ff2f3676f4c8b310ccabc227092bf4911208488ff4c8e70bd7e715e1f9f7"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.11/ContextBrief.dmg"
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
