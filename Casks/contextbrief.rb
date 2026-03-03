cask "contextbrief" do
  version "1.0.10"
  sha256 "0563d3aaf8f6d1b4a72e25d2df6dca67754985e76c47d1711f1809c60bc3d6e8"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.10/ContextBrief.dmg"
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
