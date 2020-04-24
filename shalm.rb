class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.7"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.7/shalm-binary-darwin.tgz"
    sha256 "bbd6536ef2cb84bf9b0adb1b72bb16dc883331c180449d72baaaf817ca16c3f2"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.7/shalm-binary-linux.tgz"
    sha256 "91bc5e7b09f276ebcaba2d74c1b96b32c5dffdf64df9f1df1f8440d8c000db74"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end