class Inframate < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  url "https://files.pythonhosted.org/packages/82/f2/8e40ddfede6738e7d9b78da3cbe2459fe29003de6a40c2edd34e5dc91203/inframate-0.0.8.tar.gz"
  sha256 "16b2ac4cf011b241654082e197e3a35970cd3976489b0c1a4f44872162403cb3"
  license "AGPL-3.0-only"

  depends_on "python@3.13"

  def install
    virtualenv_create(libexec, Formula["python@3.13"].opt_bin/"python3.13")
    system libexec/"bin/pip", "install", "."
    bin.install_symlink libexec/"bin/inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
