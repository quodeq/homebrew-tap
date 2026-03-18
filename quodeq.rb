class Quodeq < Formula
  include Language::Python::Virtualenv

  desc "AI-powered source code quality evaluation platform"
  homepage "https://github.com/quodeq/quodeq"
  url "https://files.pythonhosted.org/packages/17/4a/cba405bfa669051cb11094e238ffe347352cdd488e4011bf0e3207906cc1/quodeq-0.6.1.tar.gz"
  sha256 "84fde05b25f438fd7f64f2af7d46be478127bd6eac2e927f580bf2d78c748010"
  license "MIT"

  depends_on "python@3.12"
  depends_on "node"

  def install
    cd "ui/web" do
      system "npm", "install", *std_npm_args(prefix: false)
      system "npm", "run", "build"
    end
    cp_r "ui/web/dist/.", "src/quodeq/static"
    virtualenv_install_with_resources
  end

  test do
    assert_match "quodeq", shell_output("#{bin}/quodeq --help 2>&1", 2)
  end
end
