class Opentab < Formula
  include Language::Python::Virtualenv

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v1.27.0.tar.gz"
  sha256 "df1d4a0111d9534a30b5bd899fe92dbcd1083b73d1e0803d99b1a4c5ed59f4cd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
