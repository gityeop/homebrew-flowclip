cask "flowclip" do
  version "1.0.24"
  sha256 "8fd35f5f20a690fee62f29dd13324c4ce80d56294f29a908d6224bc69622845f"

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
