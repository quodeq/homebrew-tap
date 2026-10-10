class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/18/e9/32532597048436d1733bd7a42847c17959f02922c6d508bf274818960581/quodeq-1.13.0.tar.gz"
  sha256 "523c9309c8018a97c6316e8327ab15285e848f0649b3b474199b1220019b31ef"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
