class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.9"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.9/shalm-binary-darwin.tgz"
    sha256 "ba5443cea3fc8007543a9d527a3f3bf2610542c2879740b1afbeef86154bebcb"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.9/shalm-binary-linux.tgz"
    sha256 "3ff61e62bf2f3b10cb826118ed678ec452e6c2e3160a0e6e85bc028ef262bacf"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end