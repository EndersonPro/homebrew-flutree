class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.8.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v#{version}/flutree-#{version}-macos-arm64.tar.gz"
  sha256 "167fcf7c4aa0255edc7f2849390901a86b3a38a82239d568e41134b758922f35"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
