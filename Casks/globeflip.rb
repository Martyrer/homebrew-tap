cask "globeflip" do
  version "1.0"
  sha256 "f09e34a2f52697b25d8da3c51ae51c104b96c50155f93a4073755d27a08ee4df"

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
