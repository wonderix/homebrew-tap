class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.12"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.12/shalm-binary-darwin.tgz"
    sha256 "56a3ff2eeea9317296f23a15a0252b12cc715b0279ac42a44602e859cc8b1387"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.12/shalm-binary-linux.tgz"
    sha256 "13e42de27696be6fe2bef43f8c1360dc09a9f5939db4e66c01753a1ebce20f4d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end