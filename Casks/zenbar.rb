cask "zenbar" do
  version "0.3.0"
  sha256 "c4ee9e90f29b8fd7d3cd1b4eb028ac8de37cb64c9d18526a7e9180f40030dc38"

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
