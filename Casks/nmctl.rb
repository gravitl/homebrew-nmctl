cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.0"

  if Hardware::CPU.intel?
    sha256 "ba4a0954e8ae8f46c1a9fe865caa062ed7e131b60237bf9a3a49a794b4641076"
  else
    sha256 "14dee87944c3188b15fc7401f3c1459cc4e75e8f7d310777dff962cbeb66e809"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

