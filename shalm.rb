class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.3"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.3/shalm-binary-darwin.tgz"
    sha256 "a8bb1412f6c806aecfe643574572a1b7ad6325caf732987ae9f12d8a9f89955a"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.3/shalm-binary-linux.tgz"
    sha256 "6bb3ed7965460bcc7a310122beab71920f25ee5bf6f3ac6562d1e391b8672938"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end