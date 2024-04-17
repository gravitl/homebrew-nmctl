cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.24.0"

  if Hardware::CPU.intel?
    sha256 "0661828b708e71ab2bd36f00109f70c6fe9b549bb12886d616a0c1b6723da90b"
  else
    sha256 "9d0cf341f256daf6eca1070efed130026f6fa25b5680f1ac5773e16476267a91"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

