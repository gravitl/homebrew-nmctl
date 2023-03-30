cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.18.5"

  if Hardware::CPU.intel?
    sha256 "160fe8cf32464a102c444a03d8231ba3dfb49dd283714f8b40294fc276a279d5"
  else
    sha256 "b1209af077c6cd31d5c2c6daebac2a3de57fcb3c772f4dd7bc64a6ad9e4542da"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

