cask "proxybar" do
  version "1.0.2"
  sha256 "0de63530e6c2e15a4144e6c0fdef24b97fee2967f8bcafccf687ee8c4868f16e"

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
