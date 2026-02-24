cask "contextbrief" do
  version "1.0.6"
  sha256 "32202b628172f3cee3fc5b438719d9526a6d7a745a1ab4829e358d0d794c31d3"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.6/ContextBrief.dmg"
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
