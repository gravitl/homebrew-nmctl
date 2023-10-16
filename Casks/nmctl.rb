cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.21.1"

  if Hardware::CPU.intel?
    sha256 "ec406077fe98722e42a8a855e005377c75aa26113367ea109d183c750cd086ed"
  else
    sha256 "9aac77decac263f2c83ddb15c216b9d07b82f52dc75d0aac2a0f123aaeaaa039"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

