cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.22.0"

  if Hardware::CPU.intel?
    sha256 "550748517053495e54d2944d132a43dcea9ac49bb480f5b5d777bd155afd201c"
  else
    sha256 "10fccb7d304cd2f86115300387d88e0ce678496c359754e713ac053832902447"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

