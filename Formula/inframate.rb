class Inframate < Formula
  desc "CLI tool for managing Terraform infrastructure with a local web UI"
  homepage "https://github.com/neuroship/inframate"
  url "https://files.pythonhosted.org/packages/e0/0f/4b0f689351dbde4c85f16ebf43b6c1b083835e916a06d6aeeaec84502fdb/inframate-0.0.10.tar.gz"
  sha256 "3cc9996bd57786f8bc1219575a3bb3e67bf983e9dea3edb12b11641244633c47"
  license "AGPL-3.0-only"

  depends_on "python@3.13"

  # Skip Homebrew relocation of native extensions in the venv
  # (Rust-compiled .so files like jiter lack header padding for longer paths)
  skip_clean "libexec"

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
