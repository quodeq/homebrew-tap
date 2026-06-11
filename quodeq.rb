class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/44/81/6841bab30f72f3884aca86067da0d36439928a2113d98c8635e943ba98fb/quodeq-1.3.0.tar.gz"
  sha256 "28a78700eb2d18ccae768abb8214ebf9a00f5fb786c27d0b7d6be8a132c86d4e"
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
