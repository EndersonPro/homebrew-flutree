class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.16.1"
  url "https://github.com/EndersonPro/flutree/releases/download/v0.16.1/flutree-0.16.1-macos-arm64.tar.gz"
  sha256 "479d7fe2b69d708aa0ada1a8b252d5a5e1e2c96fa55b52985b1dd8fb3fc254d2"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
