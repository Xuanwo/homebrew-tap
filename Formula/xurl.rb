class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.20/xurl-0.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "97a5478ee5c7e7056ef15bcdb0bb1b82db8251ea1c1b36b640c15c4bb2a68789"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.20/xurl-0.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "c89267f17c553b249495ce10e713ff22561d15f5958fc64a476af5712e5efe0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.20/xurl-0.0.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0499b4c8cdf69b9e6532dd0a283598a228345f6e8685c9dd0effd13bdbe197e5"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.20/xurl-0.0.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fb41cc9366ac586f8077acff187975d809e7bfb36f76ba6e691d788c9fba8e3"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
