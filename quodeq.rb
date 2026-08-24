class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/f2/46/5eb53392cf3010ba771c8284890498aaee8103629daf57f63bcd274c7ebc/quodeq-1.9.1.tar.gz"
  sha256 "62ed3dccd1a82db413708b277b4d6f339635b8cdfde75c09b0f37554b9b5fc0a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
