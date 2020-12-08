class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.12"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.12/shalm-binary-darwin.tgz"
    sha256 "9b3148b47bda43db5ba06b935de7dc66dd957fc61867cc65cb1e247f703bb2d2"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.12/shalm-binary-linux.tgz"
    sha256 "d429959ed42ea1f89825074385074332df11810615a7e77d463a89b4aa3a47da"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end