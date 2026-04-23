class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.17.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v0.17.0/flutree-0.17.0-macos-arm64.tar.gz"
  sha256 "fecb607d503fc693434f415bf9c1e2eaf504976c6ef4410d9eb7f975b4e2dcae"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
