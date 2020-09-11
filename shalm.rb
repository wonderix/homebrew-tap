class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.4"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.4/shalm-binary-darwin.tgz"
    sha256 "7a482e89ecc4b8089daeab42ccc5d45c270d2c395abfc8c27ee70b0f39856f43"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.4/shalm-binary-linux.tgz"
    sha256 "20c2445f8fb609f94ee8e755805d93cd37ce5805cb3c93d9bdb43433e38d40bd"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end