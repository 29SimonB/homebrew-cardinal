cask "cardinal-file-search" do
  version "0.1.10"
  sha256 "603584f1cecb86a77e7ed17855ff1a119d6057a90414d811b306055de0ebb90b"

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
