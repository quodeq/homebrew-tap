class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/84/df/6f7d1685deb0be417d081568a2a61d4694d9ba1387c0857a768bc9313c02/quodeq-1.6.0.tar.gz"
  sha256 "7beb5237ec4dfd70fbfad772bb8ca697eb024c931ba21619762081c9b7a5a1da"
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
