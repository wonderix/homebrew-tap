class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.10"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.10/shalm-binary-darwin.tgz"
    sha256 "20c384f999fa614365ed252838b3a1102f79712a6b15cdb579f0e0310690fc0d"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.10/shalm-binary-linux.tgz"
    sha256 "682935bb0d48268091cfb9249f7b0e65e73270e553b0619ddef0746e3ee8d710"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end