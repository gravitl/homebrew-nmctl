cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.18.6"

  if Hardware::CPU.intel?
    sha256 "33ce57671fdbc130b29e936dc4763925b28c8a0bbed0bbcb469c1c34578d87a3"
  else
    sha256 "7c4c915510eaaf8d941ee6829ac4b564ac4e6316cda38e3e7597395ae8950de8"
  end

  url "https://fileserver.netmaker.org/v#{version}/darwin/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

