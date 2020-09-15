class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.5"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.5/shalm-binary-darwin.tgz"
    sha256 "4b21ba52359b04d3a64397f777f16a0ad139e60acb4bb781805a756cc5ae617f"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.5/shalm-binary-linux.tgz"
    sha256 "1b66ae0417279872cc649643ff0c34b79143d3e8a26a75814eb386b8541c4668"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end