cask "zenbar" do
  version "0.1.4"
  sha256 "c8a213919c8d57868e4e87336e9c2099abc02e013217b6aa5d4e6e62a63c2b29"

  url "https://github.com/younggglcy/ZenBar/releases/download/v#{version}/ZenBar-#{version}.dmg"
  name "ZenBar"
  desc "Minimal menubar icon manager"
  homepage "https://github.com/younggglcy/ZenBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZenBar.app"

  zap trash: [
    "~/Library/Caches/ZenBar",
    "~/Library/Preferences/name.younggglcy.ZenBar.plist",
  ]
end
