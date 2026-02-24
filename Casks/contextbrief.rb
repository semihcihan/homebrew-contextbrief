cask "contextbrief" do
  version "1.0.7"
  sha256 "d6ad500feed93e684947f607e9e24ca09d919ca1e73488f68f645c59466a6785"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.7/ContextBrief.dmg"
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
