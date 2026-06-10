class Opentab < Formula
  include Language::Python::Shebang

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c8437f2819400bb7695d9ddd0e75c0a3bb2177a5b3076345b7dd95270feec672"
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
