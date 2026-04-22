class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  url "https://github.com/neuroship/inframate/releases/download/v0.2.10/inframate-v0.2.10-macos-arm64.tar.gz"
  sha256 "03bff24e9ef3cb365275358d81ed1dc55262cd42e1112e79091262b0c22b7b88"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
