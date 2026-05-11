class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.27"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.27/inframate-v0.2.27-macos-arm64.tar.gz"
  sha256 "493adab9187314bf20e20f3eaaf9c8a82b4eb49dfd0f62b4f0f67d36b9b4df11"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
