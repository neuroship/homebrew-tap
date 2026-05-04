class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.25"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.25/inframate-v0.2.25-macos-arm64.tar.gz"
  sha256 "2c1adea7a3714277a97896d0c1cb2c63e5dfc40d3a024d402ca528e7adcb57a0"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
