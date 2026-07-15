cask "flowclip" do
  version "1.0.22"
  sha256 "668cf0dd38863d577db86b7c6dee5140f057fa2e8d4808f66d36cf5eb822b4ba"

  url "https://github.com/gityeop/FlowClip/releases/download/v#{version}/FlowClip.zip"
  name "FlowClip"
  desc "Clipboard manager with Queue support (Fork of Maccy)"
  homepage "https://github.com/gityeop/FlowClip"

  auto_updates true
  conflicts_with cask: "maccy"
  depends_on macos: ">= :sonoma"

  app "FlowClip.app"

  uninstall quit: "com.gityeop.FlowClip"

  zap trash: [
    "~/Library/Preferences/com.gityeop.FlowClip.plist",
    "~/Library/Application Support/FlowClip",
  ]
end
