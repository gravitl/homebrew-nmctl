cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.1"

  if Hardware::CPU.intel?
    sha256 "40c01ee30f828f559f83441838377d1aa199d4d4de7cdaecc0495d7f127f888e"
  else
    sha256 "f94553a42a3041c84ec8d5d1517c209eb78bab0da2a53c9ebab0305e67acd04f"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

