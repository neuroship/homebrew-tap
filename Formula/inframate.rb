class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  url "https://files.pythonhosted.org/packages/d8/ad/a7c7e5721d275971925f26df0be656559a86808b2e0f974557a718456a48/inframate-0.0.6.tar.gz"
  sha256 "defe7064b169e4a714416d9af055881a694eaaa37d4ef98c2904384dc0866423"
  license "AGPL-3.0-only"

  depends_on "python@3.13"

  def install
    python = Formula["python@3.13"].opt_bin/"python3.13"
    venv = libexec/"venv"
    system python, "-m", "venv", venv
    system venv/"bin/pip", "install", "."
    bin.install_symlink venv/"bin/inframate"
  end

  test do
    assert_match "inframate", shell_output("#{bin}/inframate --help")
  end
end
