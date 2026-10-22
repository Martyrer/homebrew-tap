cask "globeflip" do
  version "1.0"
  sha256 "c05bf15648ef4a48b3fa0de93771fde2ce3938a4bdfdc3651cf9255306aa4db9"

  url "https://github.com/Martyrer/GlobeFlip/releases/download/v#{version}/GlobeFlip-#{version}-arm64.zip"
  name "GlobeFlip"
  desc "Switch macOS Input Sources with a standalone Globe/Fn tap"
  homepage "https://github.com/Martyrer/GlobeFlip"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "GlobeFlip.app"

  uninstall quit: "com.martyrer.GlobeFlip"

  zap trash: [
    "~/Library/Preferences/com.martyrer.GlobeFlip.plist",
  ]
end
