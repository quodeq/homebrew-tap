class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/b0/10/daad254d00b932c2ba260613cfb3416e727318a473c5c53258542f7d8e36/quodeq-1.9.0.tar.gz"
  sha256 "91f89ebe9dfc8d44b0fba12098fb46cf841d9f68dd0dd0bc3f6f762100e367e9"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
