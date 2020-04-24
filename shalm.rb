class Shalm < Formula
  desc "K8s installation tool"
  homepage "https://github.com/wonderix/shalm"
  version "v0.5.6"
  url "https://github.com/wonderix/shalm/releases/download/#{version}/shalm-binary-#{OS.mac? ? "darwin" : "linux"}.tgz"
  sha256 OS.mac? ? "20c62a1974bdd139a6a0a2cd77b919d4f55e50deb5e20369e82d657e7fc4693f" : "62738b01f777916cb628cac3a06593bd065beda2561a160dcc82f79beb1ea844"

  depends_on :arch => :x86_64

  def install
    bin.install "shalm" => "shalm"
  end

  test do
    system "#{bin}/shalm", "version"
  end
end
