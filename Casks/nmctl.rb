cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.25.0"

  if Hardware::CPU.intel?
    sha256 "697a55450a50ddb606e354bbc0b75417f3ec32aeb41f547da692e25371a2b3d1"
  else
    sha256 "2f6d64b403b3becf0b5182248c5097825f90c6bf8f5b07f78205e75d31f8e036"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

