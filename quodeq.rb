class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/ae/75/c996a2fd3e1244271443b451794fadf5fc835446ce173067f43dfa6a8b59/quodeq-1.11.0.tar.gz"
  sha256 "324259d06a41bf9ceb4e7faeade4ef13333a5a588c35fff5b2941bfebfe7e4bd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
