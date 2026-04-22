class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.17"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.17/inframate-v0.2.17-macos-arm64.tar.gz"
  sha256 "c7ff0aa7f7d90ed3eb681625d5df478e81d5859eb1ee71ff62eca65cc2ba48a8"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
