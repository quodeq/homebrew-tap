class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/d5/33/c99ef41555b1ad74619fe990f19d2c1fbb703501f7d991262d57bac8967a/quodeq-1.8.1.tar.gz"
  sha256 "b74c3b2811b5dfde1bf67cc1c34588d6ee6333fc00d3ac68b92417e9b332b4ea"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
