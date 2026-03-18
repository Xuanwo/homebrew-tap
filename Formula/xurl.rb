class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.23/xurl-0.0.23-aarch64-apple-darwin.tar.gz"
      sha256 "e09a26beda5045837e6d44f84e1d6e033290047c6e2974d67762738bd6f689f0"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.23/xurl-0.0.23-x86_64-apple-darwin.tar.gz"
      sha256 "bcc1062af8b438c0a8b3e0ffc0c6f955670b7b82c862411f6c1810d4dcea88f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.23/xurl-0.0.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8eb7596414f489830dc12891a633aca410de35b5337778aa35bc6a5b3f87ab8"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.23/xurl-0.0.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8224f916c11ed5ce1607ca8a2aae7b1a9d01fd95b544423e3c185c88f47c5a7"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
