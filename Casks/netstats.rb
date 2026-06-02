cask "netstats" do
  version "1.0.0"
  sha256 "418f606d4f0ca8c48b04d2f7d609a9e99a227d381129dbfe65f7022292d4d7df"

  url "https://github.com/autumncry/netstats/releases/download/v#{version}/NetStats-#{version}.dmg",
      verified: "github.com/autumncry/netstats/"
  name "NetStats"
  desc "Menu bar monitor for system, network, and proxy status"
  homepage "https://autumncry.github.io/netstats/"

  depends_on macos: :sonoma

  app "NetStats.app"

  zap trash: [
    "~/Library/Application Support/NetStats",
    "~/Library/Preferences/com.ronnycao.netstats.plist",
  ]
end
