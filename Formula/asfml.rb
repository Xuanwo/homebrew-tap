class Asfml < Formula
  desc "CLI for reading Apache Pony Mail archives"
  homepage "https://github.com/Xuanwo/asfml"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.0/asfml-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c7793da78c18c28f55b4f6df973ed2ab949617c32f9fd69ef142ea8b7af5843f"
    else
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.0/asfml-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "541a96ec8173972d27a922faefaee9fc96ec08984903c273d9f3ca069c2bdb31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.0/asfml-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1e8531428e157f67ce01eec427f0e4996c62231557e713e1073734f74033f6f"
    else
      url "https://github.com/Xuanwo/asfml/releases/download/v0.1.0/asfml-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c46cdc413c7ac91649f9a7bfaefcd37b93e412e768cacf7b3fa09492d38d95f"
    end
  end

  def install
    bin.install "asfml"
  end

  test do
    assert_match "Usage: asfml", shell_output("#{bin}/asfml --help")
  end
end
