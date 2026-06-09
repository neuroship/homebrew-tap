class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.29"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.29/inframate-v0.2.29-macos-arm64.tar.gz"
  sha256 "d3ce3bc8d0628544d7906f4d2c06158fad04448725fe1b384bc4f50d95a0c426"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
