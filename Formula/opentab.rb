class Opentab < Formula
  include Language::Python::Shebang

  desc "Local OpenCode cost explorer / dashboard TUI"
  homepage "https://github.com/hamidi-dev/opentab"
  url "https://github.com/hamidi-dev/opentab/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a48f73cba5be474c932798a192ed9727b25d2f532d56287f0f6b912175987836"
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
