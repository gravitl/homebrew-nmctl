cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.21.2"

  if Hardware::CPU.intel?
    sha256 "3bcce2845e02176a30cf90f6ec39133caed25f13ec202bb0a74edcaff9292507"
  else
    sha256 "ab7704e27e109f926768e3e89ca3e9326695e43771868a2e8aa46b6aee8f841c"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

