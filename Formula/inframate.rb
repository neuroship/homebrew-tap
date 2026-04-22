class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.19"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.19/inframate-v0.2.19-macos-arm64.tar.gz"
  sha256 "709268a66406abcac27ccfc302584fa9f60025bfd53f4bbf3b87741ddf300a11"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
