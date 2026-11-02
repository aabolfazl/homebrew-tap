class Adbtop < Formula
  desc "Live performance for Android apps over adb, in your terminal and your CI"
  homepage "https://github.com/aabolfazl/adbtop"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aabolfazl/adbtop/releases/download/v0.2.0/adbtop-aarch64-apple-darwin.tar.gz"
      sha256 "234893f7391ed2a510eea06090b8129da417778b97a1a159ba196e92c34fb886"
    end
    on_intel do
      url "https://github.com/aabolfazl/adbtop/releases/download/v0.2.0/adbtop-x86_64-apple-darwin.tar.gz"
      sha256 "b332c9ae996d9539cc7c34a34742aaeb949cc93de0ccf6ccce951e18fe335f91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aabolfazl/adbtop/releases/download/v0.2.0/adbtop-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55ad4c22bebcc08f006cd1406786565d3a3187adc961efa8b52120728baea565"
    end
    on_intel do
      url "https://github.com/aabolfazl/adbtop/releases/download/v0.2.0/adbtop-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cc49ddc781aaddd4c7eaa4a478b358362d299eb1515d1dfdfee8eb4653aa575"
    end
  end

  def install
    bin.install "adbtop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adbtop --version")
  end
end
