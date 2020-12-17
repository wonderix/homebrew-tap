class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.7.2"
  if OS.mac?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.2/shalm-binary-darwin.tgz"
    sha256 "307f308a493f5a3d23cd236aecf734f14764acb73e2701d60c40296e9a2f51dd"
  elsif OS.linux?
    url "https://github.com/wonderix/shalm/releases/download/v0.7.2/shalm-binary-linux.tgz"
    sha256 "78f9a661f0d907f458eb05ca47985d11557223f9bd4c578e9c768325bfaf1a06"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end