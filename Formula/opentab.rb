class Opentab < Formula
  include Language::Python::Virtualenv

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "89955727123e4862883c1fc9e6b0ca56845b5f4c7f78604b9ebc961daa92c051"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
