class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/a1/e0/684840239fc5c21bac0ba972d0463d65b691da2c227df7e6bdb47fc33399/quodeq-1.10.0.tar.gz"
  sha256 "62d87dd3747f9768408b0b07e45d1cba623b641d7154c735fb2680cf720645de"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
