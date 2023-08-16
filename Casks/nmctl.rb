cask "nmctl" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"
  version "0.20.6"

  if Hardware::CPU.intel?
    sha256 "b6bc9b5fd5908d8faa69bd4ceb1ea7139f77b61e4140968e9bd5878edc348098"
  else
    sha256 "0eacaf9dcae915f8f55129614b9da03e93c058ef2eeed5f5a5ca2665546b1154"
  end

  url "https://fileserver.netmaker.org/releases/download/v#{version}/nmctl-#{arch}.tgz",
    verified: "https://fileserver.netmaker.org"
  name "nmctl"
  desc "A platform for modern, blazing fast virtual networks"
  homepage "https://github.com/gravitl/netmaker"
  binary "nmctl",  target: "nmctl"

end

