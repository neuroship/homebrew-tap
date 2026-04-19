class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  url "https://files.pythonhosted.org/packages/6b/ed/8bbbd2b19ce80f823767e39977d9b15d3000b69d21ca83515e567c6cf42e/inframate-0.0.9.tar.gz"
  sha256 "fbdc3c42f2c9c0f71f291ead6096fd90069a73fd9dff6940beb01b8ba4892c6b"
  license "AGPL-3.0-only"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    system python, "-m", "venv", libexec
    system libexec/"bin/pip", "install", "."
    bin.install_symlink libexec/"bin/inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
