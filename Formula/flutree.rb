class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "1.0.1"
  url "https://github.com/EndersonPro/flutree/releases/download/v1.0.1/flutree-1.0.1-macos-arm64.tar.gz"
  sha256 "5a0b23d0e3305beb75531944b3e86c24fa12cb1e420241f0554833878d9244d4"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
