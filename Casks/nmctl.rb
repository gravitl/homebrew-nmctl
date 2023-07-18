cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.4"

  if Hardware::CPU.intel?
    sha256 "e71c5d77a71cf20f51be67eff952f03cdffdd77212c144070b1ce61322033e8d"
  else
    sha256 "1c6711886e80ddd17a6de9c470404964e692d3c46966d31c7f077b87d8e2bbc9"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

