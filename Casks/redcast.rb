cask "redcast" do
  version "0.3.0"
  sha256 "2a33f475945ed628d797da2adde5834901547102b47d700f3595cd70ee573643"

  url "https://github.com/alesha-pro/redcast/releases/download/v#{version}/Redcast-#{version}.dmg"
  name "Redcast"
  desc "Agent-native launcher with AI, voice and Raycast extensions"
  homepage "https://redcast.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Redcast.app"

  uninstall quit: "io.redcast.app"

  zap trash: [
    "~/.config/redcast",
    "~/Library/Application Support/io.redcast.app",
    "~/Library/Caches/io.redcast.app",
    "~/Library/Preferences/io.redcast.app.plist",
  ]
end
