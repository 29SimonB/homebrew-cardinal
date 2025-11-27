cask "cardinal-file-search" do
  version "0.1.12"
  sha256 "bb488ec060ec0d91feb35162d3b675e0770980b9ae320251e1b2b2d7c48609cf"

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
