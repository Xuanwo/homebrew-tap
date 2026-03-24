class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.27/xurl-0.0.27-aarch64-apple-darwin.tar.gz"
      sha256 "10fa3ac8d0500e9e31b1831d880ae639865526aca7c514161e707113dfb18244"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.27/xurl-0.0.27-x86_64-apple-darwin.tar.gz"
      sha256 "edc1cd40b49ca5235a6692949e604755b7e0d03d971abc4797fbe49c1a54217c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.27/xurl-0.0.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb09a8547855f6b2bdf5541f0bc1a27029639be8d58c34fc723725beb8b9ef6e"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.27/xurl-0.0.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e83f3efda35afd8aafd2a91637671567d8953fb97bcecbdf3d3316a14315473"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
