cask "rexgrab" do
  version "0.9.2"
  sha256 "efca2817bc09acb0c96c4fd834a99326daa25e99d15ac390be7858e6a81c1f89"

  url "https://github.com/denis1stomin/rexgrab/releases/download/v#{version}/RexGrab-v#{version}-macOS.zip"
  name "RexGrab"
  desc "App for recording screen, system audio, and microphone"
  homepage "https://github.com/denis1stomin/rexgrab"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "RexGrab.app"

  zap trash: "~/Library/Preferences/dev.denis1stomin.rexgrab.plist"
end
