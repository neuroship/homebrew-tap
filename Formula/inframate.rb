class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.23"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.23/inframate-v0.2.23-macos-arm64.tar.gz"
  sha256 "74c471d77f97c9e0695099109cbbf047c0577255a1b7ff30322b7a3ab168f045"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
