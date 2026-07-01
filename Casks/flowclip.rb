cask "flowclip" do
  version "1.0.21"
  sha256 "e13b554dd7afeb08408c79d51d9640b74b3159bbeda837c5d2ffec95650271ea"

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
