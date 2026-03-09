class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.22/xurl-0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "afb3b3bdc6956bb56a69cf76e7a0fa7acf294147f038346334981d1a2ec69c51"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.22/xurl-0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "c3e3c23f43182b5b580916cc5413f948505a7b17fc9e1f49a4ce40116bff7cfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.22/xurl-0.0.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acf6384374be6ff53b1145a7120e62a014f2053933e6c011504ae30d2e8854d6"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.22/xurl-0.0.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "923ff3eab3d5fa2bc4d7e52d70c3dfc804984ab3e5c96a83a74f64f929defa00"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
