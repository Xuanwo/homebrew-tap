class Agenvo < Formula
  desc "Temporary room-based conversation log for agents"
  homepage "https://github.com/Xuanwo/agenvo"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/agenvo/releases/download/v0.2.0/agenvo-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "414d042807a9c7d7325e16155345641ae210fe83464d3e41fa819eb995c1bd10"
    else
      url "https://github.com/Xuanwo/agenvo/releases/download/v0.2.0/agenvo-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "45538306f3dc88b075d20d06848ee4e910c1bba6089b5ee65704b13198da3567"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/agenvo/releases/download/v0.2.0/agenvo-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a163d0df87b93e183d10bdbf3676cf8f82437911ed77521412d74f948b19e94"
    else
      url "https://github.com/Xuanwo/agenvo/releases/download/v0.2.0/agenvo-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e5ad04de8d31f24ab1e0db1626334c518ca50acd01c7cf5dbcfd4b11ce9bb97"
    end
  end

  def install
    bin.install "agenvo"
  end

  test do
    assert_match "Usage: agenvo", shell_output("#{bin}/agenvo --help")
  end
end
