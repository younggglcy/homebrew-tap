# Homebrew Cask formula for OfficeViewer
# Users can then install via: brew tap younggglcy/tap && brew install --cask officeviewer

cask "officeviewer" do
  version "0.1.1"
  sha256 "fa17fb87b6a56d8f1591ee346b54a5d9fa87a9962cbccea354c1acb1c844a65a"

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
