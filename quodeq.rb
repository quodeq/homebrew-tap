class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/c7/c5/134c480522ff52603cdd072b6fb115921ecb26fed27e11bc0510a9852f40/quodeq-1.7.1.tar.gz"
  sha256 "41cafce453b67859c606ecca51cd9e30c486150f942ec2984aa9808fc193b397"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
