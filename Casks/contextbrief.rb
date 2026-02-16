cask "contextbrief" do
  version "1.0.3"
  sha256 "bdbe4917e387a934337eefe53808995d8150cb580da93e3c2fd5112df7d5e40c"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.3/ContextBrief.dmg"
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
