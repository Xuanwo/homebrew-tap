class Asfml < Formula
  desc "CLI for reading Apache Pony Mail archives"
  homepage "https://github.com/Xuanwo/asfml"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.1/asfml-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "5336e4eb14b6dd0fa9fa7ebb7f0b505f3bcc966ba3531b546e6292a491a18e7e"
    else
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.1/asfml-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "0c25ee0d2a0be07f80f876bfc9be2953e2a6f78a343e1d3afb48813f957c5851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.1/asfml-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd2f34e21aafebb0b0c79c509aebc3a314c7bfd7db7c40faa5553b02e152afce"
    else
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.1/asfml-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ca5c6466b921bf2a515de5666b6c7d871294f8869fb451b65a002c64211e470"
    end
  end

  def install
    bin.install "asfml"
  end

  test do
    assert_match "Usage: asfml", shell_output("#{bin}/asfml --help")
  end
end
