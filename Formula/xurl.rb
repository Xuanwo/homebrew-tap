class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.19/xurl-0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "7e946f8f76b4a3c4a76cab0fdddca48fc63570b1003dbb051f71738c2b7099b0"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.19/xurl-0.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "93c73b7c18e3ba93ba6b5ff997f9f0cbe6b7dc20187895f8fb6d939f7e066004"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.19/xurl-0.0.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e337315a270cdb2f20b802a0c85da687ad9b9605b122fdfe65e8faa67c7bb7c4"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.19/xurl-0.0.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbeb6e9df0ea29705116e373454224fa846bec8d110a07a3116a1f9255feac29"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
