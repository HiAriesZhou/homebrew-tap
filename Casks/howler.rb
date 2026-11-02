cask "howler" do
  version "0.1.13"
  sha256 "b599ac55db3d7c6677d55910501e8b9bc2d512edd36021404955ea4718b76928"

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
