class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "1.0.2"
  url "https://github.com/EndersonPro/flutree/releases/download/v1.0.2/flutree-1.0.2-macos-arm64.tar.gz"
  sha256 "887a79871829bf8f86eafdb07498cc499a4cd0b9b04b85bc7a538f2f614c730b"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
