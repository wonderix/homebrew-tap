class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.6"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.6/shalm-binary-darwin.tgz"
    sha256 "2c355bcbcad761a548d9f7de903bd6ad4255f3ef5cc1255174f525cbf880f652"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.6/shalm-binary-linux.tgz"
    sha256 "0daf45dc6b05651414fc25a4e31a8e95aced6db2b848982b9598b290f626f7e2"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end