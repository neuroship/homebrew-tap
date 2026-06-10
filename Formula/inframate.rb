class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.32"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.32/inframate-v0.2.32-macos-arm64.tar.gz"
  sha256 "f64879b0161f67cdb466cf0114a68740a2cdda1a65a96b2339d8071ce8aee96a"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
