class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.16/xurl-0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "777cf49e86d087c62533bc17b49ca51a407639898ad503f9cd432e7afd5d1bcc"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.16/xurl-0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "be4c009e5a03f916cd9af8f534651bc29d6005064158ab4a29ca20bfcee66224"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.16/xurl-0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3bbadef9601efc6e3f2ada958f3bb03af9e218ab8fa595e9844947401fdd831f"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.16/xurl-0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6739f635e9a19d5d8effb223ade520f70b4d17ca04bd8a2e50c88e650df1ef56"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
