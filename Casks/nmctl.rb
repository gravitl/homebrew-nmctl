cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.24.3"

  if Hardware::CPU.intel?
    sha256 "47b2a42800df3310563296cda4ffd0ae5423bc1ff3c5bd786be4d3aa825d0072"
  else
    sha256 "e84b841d7c486afac6e262d527f7c23d930409da32b2f0821fa073d5813c05e0"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

