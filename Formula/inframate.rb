class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  license "AGPL-3.0-only"

  version "0.2.16"
  url "https://github.com/neuroship/inframate/releases/download/v0.2.16/inframate-v0.2.16-macos-arm64.tar.gz"
  sha256 "c98b01db40d35b7f1e496c47e148159ef9cd68018c69b353ad8cf1cdd0967988"

  depends_on arch: :arm64

  def install
    bin.install "inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
