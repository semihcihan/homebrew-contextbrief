cask "contextbrief" do
  version "1.0.0"
  sha256 "220b336f4674541c4ebca437d225566b32848b3b6a80205583131bc35723bfed"

  url "https://github.com/semihcihan/contextbrief/releases/download/v1.0.0/ContextBrief.dmg"
  name "Context Brief"
  desc "Local-first macOS menu bar app for collecting and densifying context"
  homepage "https://github.com/semihcihan/contextbrief"

  depends_on macos: ">= :ventura"

  app "ContextBrief.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/ContextBrief.app"]
  end

  zap trash: [
    "~/Library/Application Support/ContextBrief",
    "~/Library/Preferences/com.semihcihan.contextgenerator.plist",
  ]
end
