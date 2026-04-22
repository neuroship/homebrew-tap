class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.18"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.18/inframate-v0.2.18-macos-arm64.tar.gz"
  sha256 "2e2ad8e5fd218c66238b8e8f02490dbf7f4d6c280b9f402f150f325899f09626"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
