class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/98/c8/b5da699de86c175e0f1d27ee6e941cbce07b97921d905d5ddf54cd53fb4c/quodeq-1.14.0.tar.gz"
  sha256 "713bc1140724f43831c83673eac762719ed5c854505ce1095a2c2b7e2b515767"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
