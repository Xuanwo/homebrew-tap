class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.26/xurl-0.0.26-aarch64-apple-darwin.tar.gz"
      sha256 "9d03e07ee6299f256c22889e573168b56df247a44413e68bd6b40ce68ae172db"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.26/xurl-0.0.26-x86_64-apple-darwin.tar.gz"
      sha256 "da480e2ed6afbb17c2cda89ed6568b6a289f6fa39442c53bed92f66bbf3d9209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.26/xurl-0.0.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5529bbc1114130f3655ed869c0281b666aa8a240f8b5e6a666708d7f5e73a31f"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.26/xurl-0.0.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c83f881ef3077d49f700695c97636ff6fb82d31f23df162547b603fe1e3975e5"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
