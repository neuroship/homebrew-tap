class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.20"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.20/inframate-v0.2.20-macos-arm64.tar.gz"
  sha256 "b76a4144cb71b3d0c7849855e46122142575b406e25176be29a42860dc324715"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
