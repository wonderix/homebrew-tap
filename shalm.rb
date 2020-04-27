class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.8"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.8/shalm-binary-darwin.tgz"
    sha256 "cd11f2c623c17be780c710efd61efeb002cda5762e4ebe282df8482c3dadff41"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.8/shalm-binary-linux.tgz"
    sha256 "ae43be913e67554384a0f752910c318ae8aaa9ee4c553e05838dd2a8c35cac7d"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end