cask "officeviewer" do
  version "0.2.1"
  sha256 "ad02335c96060ba06087c82bf6b850d2b6345e34c3070518a09a61066936038a"

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
