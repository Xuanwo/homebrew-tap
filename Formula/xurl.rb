class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  version "0.0.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.14/xurl-0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "487fc1e72c94092d560e8a3ebb399feacd2edd983bd9384392bbd9171073125c"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.14/xurl-0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "55305338a307a70c9aa2da8a5b4ff755208ac98a7bbb821fa07f9f54c6396a6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.14/xurl-0.0.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6575d4990ab52a29900ce9290da96eda676775f70d71d2712e0b278861c9782"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.14/xurl-0.0.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "722a5c8cbeb40744e293f8200a615874d01c7b75be571b7adab33d25aa0ddc82"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end

