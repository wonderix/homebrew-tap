class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.2"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.2/shalm-binary-darwin.tgz"
    sha256 "ac3b72dedfd643b4a9f39a838da209d9a0244e41079ef6d8c392db6c5a02f835"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.2/shalm-binary-linux.tgz"
    sha256 "17e8c604ab747f98ef9e811dd09fd3b56cc938dc769726c4f9d88db8203ec5f4"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end