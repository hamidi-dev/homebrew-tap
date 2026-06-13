class Opentab < Formula
  include Language::Python::Shebang

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "b310c8f9d90a0e8e491c0a1f5a69fe0a9373556026e4ee1bd8f41e1996810a60"
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
