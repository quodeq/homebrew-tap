class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/5b/93/7cbcd2469d2a5ec60a7c62b1a699646d4ff0e45234d9116184d0713797c9/quodeq-1.13.1.tar.gz"
  sha256 "a83165a9e719619584e03aad623e4413eb661325e34246b7e2efcdc5a193c1b4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
