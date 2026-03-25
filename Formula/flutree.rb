class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.7.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v#{version}/flutree-#{version}-macos-arm64.tar.gz"
  sha256 "e3d0209ded4abd319d14381b6017d95ad8f5af88824285df0de4bd54a757d36b"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
