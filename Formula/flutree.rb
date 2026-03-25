class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.9.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v#{version}/flutree-#{version}-macos-arm64.tar.gz"
  sha256 "9973a3278dded66c90792db8282e474a072af68e1214f7c22aa966a86376f81a"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
