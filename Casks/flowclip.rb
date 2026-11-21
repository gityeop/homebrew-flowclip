cask "flowclip" do
  version "1.0.25"
  sha256 "36c42db500d4d3966feda86a7728d5a8f58f50ba5e308579e50e4a605908ab4d"

  url "https://github.com/gityeop/FlowClip/releases/download/v#{version}/FlowClip.zip"
  name "FlowClip"
  desc "Clipboard manager with Queue support (Fork of Maccy)"
  homepage "https://github.com/gityeop/FlowClip"

  auto_updates true
  conflicts_with cask: "maccy"
  depends_on macos: :sonoma

  app "FlowClip.app"

  uninstall quit: "com.gityeop.FlowClip"

  zap trash: [
    "~/Library/Application Support/FlowClip",
    "~/Library/Preferences/com.gityeop.FlowClip.plist",
  ]
end
