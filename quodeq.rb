class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/b8/22/64bfc38c99579afded56f55d824b55ed83dc2cda9d9b44f9bb9eafa6c4b9/quodeq-1.5.0.tar.gz"
  sha256 "434cd9550aea6b071f386f8b755a9ad79b4d47dd0093ba4010e6e2d43c165c98"
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
