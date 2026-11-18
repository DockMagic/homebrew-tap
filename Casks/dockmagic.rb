cask "dockmagic" do
  version "1.4"
  sha256 "80261517063a7fe2b27d6952c5a216524e214f433f57a2dacf39e26b211cdf06"

  url "https://github.com/DockMagic/Releases/releases/download/v#{version}/DockMagic-#{version}.dmg"
  name "DockMagic"
  desc "Independent dock with widgets"
  homepage "https://dockmagic.app/"

  livecheck do
    url "https://github.com/DockMagic/Releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DockMagic.app"

  uninstall quit: "com.dockmagic.app"

  zap trash: [
    "~/Library/Application Support/com.dockmagic.app",
    "~/Library/Application Support/DockMagic",
    "~/Library/Caches/com.crashlytics.data/com.dockmagic.app",
    "~/Library/Caches/com.dockmagic.app",
    "~/Library/Caches/com.dockmagic.app.sparkle",
    "~/Library/HTTPStorages/com.dockmagic.app",
    "~/Library/HTTPStorages/com.dockmagic.app.binarycookies",
    "~/Library/Preferences/com.dockmagic.app.plist",
  ]
end
