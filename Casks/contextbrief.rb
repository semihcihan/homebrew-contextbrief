cask "contextbrief" do
  version "1.0.9"
  sha256 "39f2458de44943f299c62d7b13bfb81a26cf63d3c0a6414d61a1e2f596a19650"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.9/ContextBrief.dmg"
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
