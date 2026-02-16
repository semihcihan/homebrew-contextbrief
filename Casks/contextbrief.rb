cask "contextbrief" do
  version "1.0.0"
  sha256 "da323cfde3e711ec4ec8ec61655cbea7c105d0c45ee35aff4e279651889c29f0"

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
