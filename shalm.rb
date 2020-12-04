class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.9"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.9/shalm-binary-darwin.tgz"
    sha256 "6a642bb175159ab31cbe6a8184c4012de1fc363e727bf3e234a8ccdc025bb69b"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.9/shalm-binary-linux.tgz"
    sha256 "6523f1a78b209165bb3b8deef02df83dc9b0c24aabbf07cfb44d6f83fa382fba"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end