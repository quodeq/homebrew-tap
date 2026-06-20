class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/fb/6d/4e1e960d238f8c56c590a78273ff6693f69e98028792c63ca5a6cc8104ac/quodeq-1.4.0.tar.gz"
  sha256 "a54fd25d447b378f112403a071b1b7a76a29dc02d9371c7f94f23734b07ce6bf"
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
