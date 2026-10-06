class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/5d/89/705496b26b9139e8f3c79ada5d0fe873a5f152f2ffd3aedab2b221a041f3/quodeq-1.12.2.tar.gz"
  sha256 "f6abd0b0989703f5fffe9051ceebec5312d5c934efc0a50734160b020873850c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
