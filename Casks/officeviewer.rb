cask "officeviewer" do
  version "0.3.0"
  sha256 "ccee00dae36516f995aa25b51427b4624b15ec8790cffbcff64dcb1e488771a1"

  url "https://github.com/younggglcy/OfficeViewer/releases/download/v#{version}/OfficeViewer-#{version}.dmg"
  name "OfficeViewer"
  desc "Open Office files and view their XML structure"
  homepage "https://github.com/younggglcy/OfficeViewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OfficeViewer.app"

  zap trash: [
    "~/Library/Caches/OfficeViewer",
    "~/Library/Preferences/name.younggglcy.OfficeViewer.plist",
  ]
end
