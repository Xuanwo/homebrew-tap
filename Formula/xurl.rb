class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.24/xurl-0.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "928d82fa48f6fee9be54c72a744a5fd7e60ef702d88abaa4a710f5cd37978229"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.24/xurl-0.0.24-x86_64-apple-darwin.tar.gz"
      sha256 "06edc918378127de3b86fb380bd5a09d8d2f8f6f43f7213f1d94e0510785c548"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.24/xurl-0.0.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9d87d55aa65f78f92246e7301ec516efd579af1daf646de80d5d23f16f5c5ad"
    else
      url "https://github.com/Xuanwo/xurl/releases/download/v0.0.24/xurl-0.0.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28ccfeba84fedb2bdce5cd37dd725289796c0a6f5065a29549a310034402fc86"
    end
  end

  def install
    bin.install "xurl"
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
