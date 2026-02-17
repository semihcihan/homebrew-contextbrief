cask "contextbrief" do
  version "1.0.5"
  sha256 "3b97fc7a912b8ac5218ae5423f25bc794b52757724c40d3cdd5f764439970c67"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.5/ContextBrief.dmg"
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
