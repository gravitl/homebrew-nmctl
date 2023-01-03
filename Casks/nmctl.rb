cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.16.3"

  if Hardware::CPU.intel?
    sha256 "ce9d4c9ca95cdedf0b4e6f9d8a6acc7acd20595baa0771624615f50dc6371825"
  else
    sha256 "84d4ffb66029eec5ea8bbcac6a7b6244f4dc9f2deebb3221137d1be792b48d61"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

