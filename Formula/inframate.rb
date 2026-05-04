class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.26"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.26/inframate-v0.2.26-macos-arm64.tar.gz"
  sha256 "47f59448a30f3bc60ad9737a06f1c3902a33f948f29913b2b737537370f09021"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
