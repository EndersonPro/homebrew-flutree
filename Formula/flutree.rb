class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "1.0.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v1.0.0/flutree-1.0.0-macos-arm64.tar.gz"
  sha256 "321aa9ab60f480685d1b66d515b5c8295c28a611670b144fe90c626c5123ef12"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
