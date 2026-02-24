class Xurl < Formula
  desc "Client for AI agent URLs"
  homepage "https://github.com/Xuanwo/xurl"
  url "https://github.com/Xuanwo/xurl/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "81076bd44834f99f91e899320028e6a7cf81f40b51a70a1410ec7567b55fe2d2"
  license "Apache-2.0"
  head "https://github.com/Xuanwo/xurl.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "xurl-cli")
  end

  test do
    assert_match "Usage: xurl", shell_output("#{bin}/xurl --help")
  end
end
