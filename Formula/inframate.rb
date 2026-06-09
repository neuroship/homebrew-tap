class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.30"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.30/inframate-v0.2.30-macos-arm64.tar.gz"
  sha256 "056d69e3a4c8e9c330d63349074edfedb915c752cfbad804f6a7304de5c40ee2"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
