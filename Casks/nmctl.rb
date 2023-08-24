cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.6"

  if Hardware::CPU.intel?
    sha256 "c2baaee23d2486b007e8f8824b131b67136e95ff5db99296feca664c08002289"
  else
    sha256 "cf9eb5bf0090115b5a219c9f5aee1e7ec5ada166b903868ba353429c2434137f"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

