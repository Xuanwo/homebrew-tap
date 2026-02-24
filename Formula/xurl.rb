class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.15/xurl-0.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "4cb6d7203c8ad3b4cf0fe78256379e58ea4e55959b692d9e428b619f233e8c45"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.15/xurl-0.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "172024109223aed6f58a47b4d2f537b7cdd541a0c7d61222872232351c025773"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.15/xurl-0.0.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "240cbfe41d4e960d1a5f5fdcaf50a190bd3cf47093c2bece11c62561d1d39d12"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.15/xurl-0.0.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b354c49bf49d4a5588cf203b387c6dfc5d4ff300e4a620ea2671747442417067"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
