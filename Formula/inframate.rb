class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.11"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.11/inframate-v0.2.11-macos-arm64.tar.gz"
  sha256 "0750e356ff262e29f134a0d094feb7848b64c794406fdefc74a1144ab5176f75"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
