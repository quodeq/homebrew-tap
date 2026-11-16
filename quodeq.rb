class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/7f/19/44c1f68fa466649d1ff47b03f53b06a1c06dbcb01ed063016f5c811b62d9/quodeq-1.16.0.tar.gz"
  sha256 "5070f3b69c3689b1423a5d6cf2123464c72115c9836271eaa4557ef232d2bc93"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
