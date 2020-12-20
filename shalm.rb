class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.7.4"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.4/shalm-binary-darwin.tgz"
    sha256 "f758de03a08dad9079879d4d2cc19df9a8530df7b82aa226db0204429efef105"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.4/shalm-binary-linux.tgz"
    sha256 "25bdd885819173ed1be98d2a097be4d19e2ec5684037948163a74bdb6c76a409"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end