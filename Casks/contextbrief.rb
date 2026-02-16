cask "contextbrief" do
  version "1.0.0"
  sha256 "10e4eed72f137907679fe120c7ee4524e993e2271f43307ef42a8a5fcd6ca059"

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
