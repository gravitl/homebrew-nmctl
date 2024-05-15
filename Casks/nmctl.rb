cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.24.1"

  if Hardware::CPU.intel?
    sha256 "9a115c803231248378f9d24e86b2fa136b6a5260432d78fac102dc621a83c15a"
  else
    sha256 "1afbed9b7ca04d7d3ea0a5be7cbd1e30517ab2c613acc3c7d70f0a27b68ff582"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

