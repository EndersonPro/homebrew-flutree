class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.12.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v0.12.0/flutree-0.12.0-macos-arm64.tar.gz"
  sha256 "ff4c1b3e905078f31ecfeefd6d6826f8a6c9c1aee2f21519a09f4bab4835863f"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
