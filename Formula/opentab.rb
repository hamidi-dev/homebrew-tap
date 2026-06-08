class Opentab < Formula
  include Language::Python::Shebang

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "49e220ee9a6255fc11adbffda8da1c66ba13f00a1f3482fe61b3f1a5bf6a8c71"
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
