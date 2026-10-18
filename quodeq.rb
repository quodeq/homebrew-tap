class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/e6/f0/23162442548117bd834b6ecd1c1fc084e3ba71b4324dd84d33d788a30427/quodeq-1.15.0.tar.gz"
  sha256 "b150895cdc836f01460ef438fd70c1c9599e400aefe1aec34a8b041b6823483b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
