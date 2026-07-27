class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/14/88/c36bc37836a95bfc71cec6487a91e3beafb7ef00620c478ffc8da3621554/quodeq-1.7.3.tar.gz"
  sha256 "5ebd8de8089a079825c7bf416abf167fe765685fef9ddef4b9a065f940ebfeee"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
