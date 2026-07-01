class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/a8/66/b65a5529f8d93219c8301b22faf46faec8aa1514470573c8a6a1e7982a2f/quodeq-1.5.1.tar.gz"
  sha256 "12ce217b688c473b07d6529f2bf7adede015a588ecf64000c8b38f157649bddc"
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
