class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/source/q/quodeq/quodeq-1.1.0.tar.gz"
  sha256 "4d9ab4e26ae9f5fc1f4b86714ec2aeef5900905a255c0e171eab06d51ad2c6d9"
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
