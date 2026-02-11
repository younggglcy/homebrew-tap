cask "zenbar" do
  version "0.1.2"
  sha256 "9d0d1e0b2a1fc65d964ad429e2bcff8c37d8664f221e8d0631a33f18b1310686"

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
