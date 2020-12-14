class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.7.1"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.1/shalm-binary-darwin.tgz"
    sha256 "93917b24deeb41ddcb12bfc89b307c2c7e34c9e21b195faefbf0311e9fb35b1d"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.1/shalm-binary-linux.tgz"
    sha256 "11be566294a2fcd4a0e73105e415d670dc408c3dcd53791a1522d32d144fdf70"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end