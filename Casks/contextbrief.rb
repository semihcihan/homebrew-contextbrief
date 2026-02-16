cask "contextbrief" do
  version "1.0.0"
  sha256 "fbe0d3aa81ebeeffc6891a611d479632a3fbc830bb5845c95c184dadbe49a3f0"

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
