class Opentab < Formula
  include Language::Python::Virtualenv

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v1.17.0.tar.gz"
  sha256 "20ee9adb614f135c53f2419137a0f77e4a06ab057437ae818e992686cdb94b12"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
