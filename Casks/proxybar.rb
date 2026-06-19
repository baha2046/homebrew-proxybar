cask "proxybar" do
  version "1.0.1"
  sha256 "077fa70410146db12ec4128dd415d50feef69802f82c283addc2844c012ba67b"

  url "https://github.com/baha2046/ProxyBar/releases/download/v#{version}/ProxyBar-#{version}.zip"
  name "ProxyBar"
  desc "macOS menu bar app for WireGuard split tunneling"
  homepage "https://github.com/baha2046/ProxyBar"

  depends_on macos: :ventura

  app "ProxyBar.app"
end
