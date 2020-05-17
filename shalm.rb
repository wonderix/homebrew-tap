class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.0"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.0/shalm-binary-darwin.tgz"
    sha256 "29f402af96ea31d7be5d2ce15d10e909c070b4f1c86c0ff5f7dc121c72706c21"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.0/shalm-binary-linux.tgz"
    sha256 "04128bff97f1633ab2bddbbda99174453cb65dce707c69a3432b1c42b1c01040"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end