cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.21.0"

  if Hardware::CPU.intel?
    sha256 "d7ed162898e6a7a8c71364cfdb87a59f96b85bae3c840ce0026768ca9935358b"
  else
    sha256 "3638483174c3f8aaab2541b59b1a2a9e4e868e3048efe41eb3eeb4ccc653addf"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

