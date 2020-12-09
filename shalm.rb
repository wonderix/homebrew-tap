class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.13"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.13/shalm-binary-darwin.tgz"
    sha256 "3643a1acd3d631a5a59fc9a6322f7e06de014cbefd35098e0c06925df6ae2d6e"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.13/shalm-binary-linux.tgz"
    sha256 "2f6e3594e6f456d720789158885971ef195df23c6b090d75aa127aac42d2b5b9"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end