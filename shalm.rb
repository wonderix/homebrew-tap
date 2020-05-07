class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.11"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.11/shalm-binary-darwin.tgz"
    sha256 "ebbf4701713c6af0d6fae0dea00176a8cb5b89c25c78ef25d291f26a56f849d3"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.11/shalm-binary-linux.tgz"
    sha256 "31aa61514f68c9a1abd8b176e3860984c9d7c5f491dee5a6b1dc10ab183a14de"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end