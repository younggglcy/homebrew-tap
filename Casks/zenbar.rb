cask "zenbar" do
  version "0.1.3"
  sha256 "e12969b1f858e819f832d21370e5b8f1ad4512b07ce6f1fa098de3629fb95ec0"

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
