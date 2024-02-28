cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.23.0"

  if Hardware::CPU.intel?
    sha256 "9e27a04d8ed5cddc26ec066f60cf82a1de00f9ae8e676314d1d41dbc2de8cdce"
  else
    sha256 "2737349016004672f1244255cec2d1905bf41fc0280c5bec0cd0bb92a8553aa8"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

