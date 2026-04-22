class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.14"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.14/inframate-v0.2.14-macos-arm64.tar.gz"
  sha256 "5dbf2a4d79a43c16f1383d1fc3ddfa570e99d87c353238678cdaac0060f194f4"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
