cask "flowclip" do
  version "1.0.19"
  sha256 "8a30bc834329cae48d4d8b8d75988b44eec8975e74ecc76851e0f8c4237e1581"

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
