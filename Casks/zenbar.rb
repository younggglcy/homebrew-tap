cask "zenbar" do
  version "0.2.1"
  sha256 "4a689c9d6f745eb4e5478d6df47b46e69f14dee5a33c612003a732b089f3b9ba"

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
