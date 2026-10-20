class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/84/6c/9ff1db16c484cb0ac1893453b8fe62954abe11aeb7ccc81ba32ee9ce9ee3/quodeq-1.15.1.tar.gz"
  sha256 "c19da7fde0da966888473da368938db5e15207481d37ab1fd65f20c0b62f651f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
