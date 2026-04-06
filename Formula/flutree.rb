class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.15.1"
  url "https://github.com/EndersonPro/flutree/releases/download/v0.15.1/flutree-0.15.1-macos-arm64.tar.gz"
  sha256 "670b8f31356813b17e58ffc3303c17c91bacdee3078cb9312ab9a2456868b59f"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
