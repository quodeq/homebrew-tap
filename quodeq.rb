class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/69/4f/110f3e913547f6b6030946739b0b9bbdb5f9af899acbf32d105c9df3d990/quodeq-1.6.1.tar.gz"
  sha256 "3ef1c53e22eb0e4fa472988894f265f5710b71a98377c231ba5652b55fb80b15"
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
