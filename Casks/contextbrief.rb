cask "contextbrief" do
  version "1.0.4"
  sha256 "79efd75708b77f47a64a7cf5dfb3cf8f45a3abc765c5cc87337ca95164d38804"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.4/ContextBrief.dmg"
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
