class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.17/xurl-0.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "a201b80c2c7d288a9a42ca3338c174331d52ce65df4b238b04a276b5335f6d07"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.17/xurl-0.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "75d8098c9b3cf4ebf58f6a56c84b6ee20ee48c85d538c3dca7cd733657930a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.17/xurl-0.0.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0a24c58cb47f10fa524552eec052eb3ecbecf128ba8c58e22da87c5eead1dc9"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.17/xurl-0.0.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74c41f1603869da4d8027b8afe771af85bf84ec7ac2e47cb55cc5c265ae0f579"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
