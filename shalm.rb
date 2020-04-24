class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.7"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.7/shalm-binary-darwin.tgz"
    sha256 "302c3d35075aab0ce2f0f293f8af42e9cbae23380d0c43eb4c47c16ea6f084f7"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.5.7/shalm-binary-linux.tgz"
    sha256 "068ebe5841a844e11e0f6cbe708487956e36942a536dbf052420f8a5a2db67e1"
  end
  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end