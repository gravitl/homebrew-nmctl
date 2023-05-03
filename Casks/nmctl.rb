cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.19.0"

  if Hardware::CPU.intel?
    sha256 "17136540b533125c77ff2cd47298b508322ba81ad18291ddc027eb97be3c7e12"
  else
    sha256 "9d00b7941b9b747d793496e8bc500b661161bfed582b9d41e91ac49020f54084"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

