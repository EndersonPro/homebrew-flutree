class Flutree < Formula
  desc "Flutter Worktree CLI for managing git worktree workflows"
  homepage "https://github.com/EndersonPro/flutree"
  version "0.5.0"
  url "https://github.com/EndersonPro/flutree/releases/download/v#{version}/flutree-#{version}-macos-arm64.tar.gz"
  sha256 "61da27c3ab2d284c8ddc3a1514ab801fb5dc3da4b95bc661801666d592c8c5bb"
  license "MIT"

  def install
    odie "flutree Homebrew binary supports macOS arm64 only" unless Hardware::CPU.arm?
    bin.install "flutree"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/flutree --help")
  end
end
