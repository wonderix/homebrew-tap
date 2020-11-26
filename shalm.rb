class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.8"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.8/shalm-binary-darwin.tgz"
    sha256 "bf348b3d06a7be5b81be15339bed8778b9161c6e0e15abe0c95a00672929b08d"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.8/shalm-binary-linux.tgz"
    sha256 "f80ddaec42c6c4e75987b21f106f4b4ef5f24bbf455d66f19e034f9615470266"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end