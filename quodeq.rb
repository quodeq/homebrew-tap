class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/00/ed/d0f107cc1add06a7cd2cbe79c53b376e1bbaafb2f6e2b76e671d9cf23960/quodeq-1.5.2.tar.gz"
  sha256 "6f1a0d9e021889484122443838fbddddbb724c2bbfa6ddb3c832ffd96aef1a09"
  license "MIT"

  depends_on "python@3.12"
  depends_on "node"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
