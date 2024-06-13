cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.24.2"

  if Hardware::CPU.intel?
    sha256 "5d10f61f3965649dcb52ebff64d747728a583175c83a643b7bba80727ad536e0"
  else
    sha256 "18b784cb5269a8a58430470d78f78e9f9ea026cd044f2adf4e5b34b078b0356a"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

