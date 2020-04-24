class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.6"
  url "https://github.com/wonderix/shalm/releases/download/v0.5.6/shalm-binary-darwin.tgz"
  sha256 "20c62a1974bdd139a6a0a2cd77b919d4f55e50deb5e20369e82d657e7fc4693f"

  depends_on :arch => :x86_64

  
  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end
