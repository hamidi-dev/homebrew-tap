class Opentab < Formula
  include Language::Python::Shebang

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "e2e3b200979ac2d982e3448bb7fb41c4e7edce36f1c8b43c58652a91d39ce02e"
  license "MIT"

  depends_on "python@3.12"

  def install
    # opentab is a single self-contained, stdlib-only script; point its
    # shebang at the keg's Python so `curses` is guaranteed to be present.
    rewrite_shebang detected_python_shebang, "opentab"
    bin.install "opentab"
  end

  test do
    assert_match "opentab", shell_output("#{bin}/opentab --help")
  end
end
