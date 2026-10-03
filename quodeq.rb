class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/98/b9/8aee17e4d272159ef008180aca5814d8022cad1c16f0f44e9d7c448e60cc/quodeq-1.12.0.tar.gz"
  sha256 "b1e9bd414807f7e6f51295c2292a6b911b9f3e3a942fed93bdfc5ece9039a589"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
