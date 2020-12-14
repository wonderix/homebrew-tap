class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.15"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.15/shalm-binary-darwin.tgz"
    sha256 "dc4083bdf221c1c6b74a9dca1a0a1cd83eea6ffcd4b49087d266c92f94322092"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.15/shalm-binary-linux.tgz"
    sha256 "504851afa777fad71b6f3931253c057eee2fea17d77d0095820bd93e19811ec7"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end