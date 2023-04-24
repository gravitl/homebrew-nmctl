cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.18.7"

  if Hardware::CPU.intel?
    sha256 "f73e44e6d3f3f1617c548084a33938124b459c3f45ed40c4e4a2ce63862368ef"
  else
    sha256 "dcfd684901ebaacfcb9c6ee777c306351bc8bfd036c4c4b824ee98f37871d001"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

