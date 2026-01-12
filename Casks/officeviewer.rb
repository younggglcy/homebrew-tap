cask "officeviewer" do
  version "0.2.2"
  sha256 "88ff9516f3bd0cc4224d79e9b8d5d2e3eaef61f0f6ca0154bf5f9adfa57ff7ff"

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
