class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.15"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.15/inframate-v0.2.15-macos-arm64.tar.gz"
  sha256 "77b3072709ee1c2317e2e683273da2c6bc401d615666d0fdca6fcaf4b1495c48"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
