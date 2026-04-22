class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.13"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.13/inframate-v0.2.13-macos-arm64.tar.gz"
  sha256 "729202f6d9c38cd2c7fac98c78667a28ebb76a812d9651c6fb92fc7dc990e050"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
