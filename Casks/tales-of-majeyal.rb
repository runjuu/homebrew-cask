cask "tales-of-majeyal" do
  version "1.7.5"
  sha256 "e3a273495229835a93bbd808f5d46157e5393063f5ffbca8ce95609691d05959"

  url "https://te4.org/dl/t-engine/t-engine4-osx-#{version}.zip"
  name "Tales of Maj'Eyal"
  desc "Topdown tactical RPG roguelike game and game engine"
  homepage "https://te4.org/"

  livecheck do
    url "https://te4.org/download"
    regex(/href=.*?t-engine4[._-]osx[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  app "T-Engine.app", target: "Tales-of-Maj'Eyal.app"
end
