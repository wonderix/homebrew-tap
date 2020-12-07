class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.6.10"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.10/shalm-binary-darwin.tgz"
    sha256 "f1201c5d581a721ee5ee631cc88abcbaef834d687e207b589750e43ec696a81d"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.6.10/shalm-binary-linux.tgz"
    sha256 "530097c7f2738c162705c0c6fbef454e85d4c1b65bf1fdc577e729d28895a89f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end