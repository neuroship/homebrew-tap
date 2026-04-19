class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  url "https://files.pythonhosted.org/packages/67/fc/9643d0100c6ecda396bcf34eb782f322c391e02b780f036302023c51f2a7/inframate-0.0.7.tar.gz"
  sha256 "64485d8c8c450914d3282686cd9f4ce204d6cc221db5004008ec40e872541ebb"
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
