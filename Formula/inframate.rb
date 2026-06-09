class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.31"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.31/inframate-v0.2.31-macos-arm64.tar.gz"
  sha256 "90e6308c66408ceecf2602a73eab18d5dad642379d9bf3a73df96d01192d9d97"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
