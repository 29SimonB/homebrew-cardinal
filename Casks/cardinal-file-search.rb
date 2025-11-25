cask "cardinal-file-search" do
  version "0.1.11"
  sha256 "e9784877e3d015a644ffbfa82b31cef21f7c38448df2bbccc7122a106a5852c5"

  url "https://github.com/cardisoft/cardinal/releases/download/v#{version}/Cardinal_#{version}_aarch64.dmg",
      verified: "github.com/cardisoft/cardinal/"
  name "Cardinal"
  desc "Fast file searching tool for macOS"
  homepage "https://github.com/cardisoft/cardinal"

  depends_on macos: ">= :monterey"

  app "Cardinal.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
