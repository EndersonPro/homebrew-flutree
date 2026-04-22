class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.16.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v0.16.0/flutree-0.16.0-macos-arm64.tar.gz"
  sha256 "380bbfdf822099c5578ae065e8501ef04991c1c91afe9c32362139cdb374fa62"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
