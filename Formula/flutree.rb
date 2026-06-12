class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "1.1.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v1.1.0/flutree-1.1.0-macos-arm64.tar.gz"
  sha256 "a32ad82032bd2aedf975f84988f3ef3e30b6a5832d7b31c52d6f745a7bd3ff5e"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
