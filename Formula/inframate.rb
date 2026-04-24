class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.21"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.21/inframate-v0.2.21-macos-arm64.tar.gz"
  sha256 "3e0132f84e10ab9bd1dfc23cbdd7b3382d3ac5230b379ed544696884fcfc1818"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
