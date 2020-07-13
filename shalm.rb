class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.1"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.1/shalm-binary-darwin.tgz"
    sha256 "f4e209dc1ebc4d571c4460dee603bb1d0d3b7bc63e23a05a112fcbd97a7c6ad9"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.1/shalm-binary-linux.tgz"
    sha256 "e31967f7ea989ec2a3a06a054c8a2f46d0b92bc1d95fd4f785e44061f0e257c7"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end