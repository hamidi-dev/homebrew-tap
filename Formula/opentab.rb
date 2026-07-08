class Opentab < Formula
  include Language::Python::Virtualenv

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v1.9.0.tar.gz"
  sha256 "45ebf05a31f1842236ebc8aeabfa681b9dbb41ca56fa53f3e9b7cda6759cee4d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
