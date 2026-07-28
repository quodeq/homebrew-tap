class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/11/20/de96ffe4482f4cc431035a95858591219329bd0c200e1dfa45aabd82c54c/quodeq-1.8.0.tar.gz"
  sha256 "e16ca6a277e6de03bdbfee572dae369a7d5546cda4ebb8241a6f424d82f180cd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
