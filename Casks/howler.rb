cask "howler" do
  version "0.1.14"
  sha256 "007aecbbf437314d360051716989dbe883f8d15c48e9ea9b499617f57ec65522"

  url "https://github.com/HiAriesZhou/Howler/releases/download/v#{version}/Howler.dmg",
      verified: "github.com/HiAriesZhou/Howler/"
  name "Howler"
  desc "Menu bar AI assistant for quick questions"
  homepage "https://howler.arieszhou.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Howler.app"
end
