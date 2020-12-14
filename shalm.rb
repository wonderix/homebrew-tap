class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.14"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.14/shalm-binary-darwin.tgz"
    sha256 "a08dab42064b514d8c4c7430a9bfbdb9212df6b0bcaad60f422299cdf4f34431"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.14/shalm-binary-linux.tgz"
    sha256 "ba98d9df6795e0d393ef479af78e261e1ed6ad75ed3c0e239c8390609dfd528e"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end