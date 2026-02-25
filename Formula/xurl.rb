class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.18/xurl-0.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "d26e77bc0062de699be7c9c5c6c17f65a7bcdbf3ac1307914cbaa5b43a458f80"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.18/xurl-0.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "da4cbed34f0a6b577c32f508d1840adc5da27a02dc1489b0e6418b2fd0ab3060"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.18/xurl-0.0.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64e8a1a1dfaa11b41cbba102a8a6c0e5eee7f06c46f131cb8176a519412ee73e"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.18/xurl-0.0.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0073b58e0749864be9b4c759ada39958db352cd1dfaf73150b8edcad11bf558"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
