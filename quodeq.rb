class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/56/40/913ca3d1970c13bc0f279092f842af878913823772bc8276cdf755788672/quodeq-1.10.1.tar.gz"
  sha256 "44cd86301a53b041df36bbc84712cf862943f4ca47b4b84a36803936031ae04b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
