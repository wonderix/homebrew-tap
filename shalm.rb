class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.11"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.11/shalm-binary-darwin.tgz"
    sha256 "d9e56db69f07e6c16d7922babbae8903d852622b5d36802d6fe74e90b23e73da"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.11/shalm-binary-linux.tgz"
    sha256 "0911f1c69e778a0ab374e251323862a2dde6a1c62cf6e31c9de707ffe2071fa1"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end