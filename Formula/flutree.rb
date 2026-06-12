class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "1.1.1"
  url "https://github.com/EndersonPro/flutree/releases/download/v1.1.1/flutree-1.1.1-macos-arm64.tar.gz"
  sha256 "798ea6338b2df68411d3248a5d83c641e3dbafd5fec3cc1f8548b17d5959908e"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
