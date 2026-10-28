class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/00/18/33c3807bdefdb1e0f9e7be6645a9eda14991b622c938f633aec67ee87916/quodeq-1.15.2.tar.gz"
  sha256 "2bccb75ade14592f4fba5a8e40765437aecee68081ac7fa8d109b4d3e7c62979"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
