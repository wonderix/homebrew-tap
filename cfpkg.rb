class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/cfpkg"
  version "v0.1.0"
  if OS.mac?
    url "https://github.com/wonderix/cfpkg/releases/download/v0.1.0/cfpkg-binary-darwin.tgz"
    sha256 "917b7fbfff8a11d1987e07142f0a853d02a0b76d3b4b9acaec67a24855bc7941"
  elsif OS.linux?
    url "https://github.com/wonderix/cfpkg/releases/download/v0.1.0/cfpkg-binary-linux.tgz"
    sha256 "f397c2cd78eee64c94ed74e7dd180f2d605e9bae500aac49aa6a2f2acf6ac221"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "cfpkg" => "cfpkg"
  end

  test do
    system "#{bin}/cfpkg", "version"
  end
end