class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.7.0"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.0/shalm-binary-darwin.tgz"
    sha256 "df5b3eee54e5b404adfa7f6baf5b60ddb6d172bb6e052514db0a3f5c44cf2ff3"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.0/shalm-binary-linux.tgz"
    sha256 "1dd202b22ea6813296b3de1b718506b7fadc8656d5107c0e336d8c19b2dc796b"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end