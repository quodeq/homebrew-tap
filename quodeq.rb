class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/38/5f/630e1902bc6a06459b0369a0c59a915a61dc9f6cb8d9baaea67a714c7390/quodeq-1.7.2.tar.gz"
  sha256 "8c0fbdaf5585135b54a2a440f81727e7bcf5abec244474414db13f7ca43deb6a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
