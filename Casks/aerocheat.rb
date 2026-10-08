cask "aerocheat" do
  version "0.2.0"
  sha256 "0a33994b5a57989c1b81ad6a3d7f793adeed5b43ba84cb8bf96f200cd471e33d"

  url "https://github.com/ZionStage/AeroCheat/releases/download/v#{version}/AeroCheat-#{version}.dmg"
  name "AeroCheat"
  desc "Menu bar cheatsheet and shortcut coach for AeroSpace"
  homepage "https://github.com/ZionStage/AeroCheat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "AeroCheat.app"

  zap trash: "~/Library/Preferences/io.github.zionstage.AeroCheat.plist"

  caveats <<~EOS
    AeroCheat is not notarized by Apple, so macOS blocks its first launch.
    Right-click AeroCheat in Applications and choose Open, or allow it in
    System Settings > Privacy & Security > Open Anyway.

    AeroCheat requires AeroSpace: https://github.com/nikitabobko/AeroSpace
  EOS
end
