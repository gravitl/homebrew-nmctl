cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.5"

  if Hardware::CPU.intel?
    sha256 "6b66cac6d93077f7e3358da14a272ce98769afff5d0ac0202d019b785bedab3f"
  else
    sha256 "5e3bc90296061a13cc35649ec3cf5e600b55b443eaaaf03345a7da126941a5a9"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

