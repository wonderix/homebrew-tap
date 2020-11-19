class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.7"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.7/shalm-binary-darwin.tgz"
    sha256 "333e467608fac798c32cd82454e0200c0388c8ed602f5a442f710d871b969b7c"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.7/shalm-binary-linux.tgz"
    sha256 "b68e707fedec7866814e6f304124e4b2918faf96f1923b68b5cdc35867fdd161"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end