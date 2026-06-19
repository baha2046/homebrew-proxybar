cask "proxybar" do
  version "1.0.0"
  sha256 "96cce88662c3a60fa65951f5ccc07ea34d561deb222a717a6cd0b119a8a32b18"

  url "https://github.com/baha2046/ProxyBar/releases/download/v#{version}/ProxyBar-#{version}.zip"
  name "ProxyBar"
  desc "macOS menu bar app for WireGuard split tunneling"
  homepage "https://github.com/baha2046/ProxyBar"

  depends_on macos: :ventura

  app "ProxyBar.app"
end
