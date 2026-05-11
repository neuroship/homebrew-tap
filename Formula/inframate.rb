class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.28"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.28/inframate-v0.2.28-macos-arm64.tar.gz"
  sha256 "c9c9dbd0291f94435ea43b6af30260edff74a3602be4b0410084c8c2ecfc47b3"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
