class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.21/xurl-0.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "e4dd969f10487cdb67115f55edffefdc349651830b990e0e9dbe84cc8112b9ae"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.21/xurl-0.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "352bb15ffee1304efdae5cd9e575d3c5ed0f7eddab8d76088430ef6d44c20fc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.21/xurl-0.0.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cff4641c039284c42d2616de7bb891117df127959b2af196155a85c35231c798"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.21/xurl-0.0.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce7e5d1ed3758f4a11cc57245b103ca48a260c11969603b7e96725c392cdc9a9"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
