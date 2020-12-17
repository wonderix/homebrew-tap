class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.7.3"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.3/shalm-binary-darwin.tgz"
    sha256 "23cfb6b499cd0bca7356bda2335045ea9f4077021da7e7aa59abc43ad10dfb63"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.3/shalm-binary-linux.tgz"
    sha256 "61c7bfbd448001589a2d1964669dc27a3743511d44ebd201c9f745f485ed2a8d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end