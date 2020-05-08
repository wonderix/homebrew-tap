class Cfpkg < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/cfpkg"
  version "v0.1.0"
  if OS.mac?
    url "https://github.com/wonderix/cfpkg/releases/download/v0.1.0/cfpkg-binary-darwin.tgz"
    sha256 "403b6c02b479d40481f9e8ab10c8f16985207566016a845cda26a53f1bf0925e"
  elsif OS.linux?
    url "https://github.com/wonderix/cfpkg/releases/download/v0.1.0/cfpkg-binary-linux.tgz"
    sha256 "db7eb87a6e52709646efd25922bdff4ceb4e3ca0ff91bf4630091c2c9eca072a"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "cfpkg" => "cfpkg"
  end

  test do
    system "#{bin}/cfpkg", "version"
  end
end