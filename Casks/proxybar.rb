cask "proxybar" do
  version "1.0.3"
  sha256 "08f35e177e21358b01f73cab6ebfc43324d016d2a8f9fa904b34c646834f93ee"

  url "https://github.com/baha2046/ProxyBar/releases/download/v#{version}/ProxyBar-#{version}.zip"
  name "ProxyBar"
  desc "Menu bar app for WireGuard split tunneling"
  homepage "https://github.com/baha2046/ProxyBar"

  depends_on macos: :ventura

  app "ProxyBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ProxyBar.app"]
  end
end
