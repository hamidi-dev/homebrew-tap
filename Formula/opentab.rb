class Opentab < Formula
  include Language::Python::Virtualenv

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v1.11.0.tar.gz"
  sha256 "d02e6a74e04b69d4979d3b7cd33211782e0eabe2a5b62e1cc721f048c027245a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
