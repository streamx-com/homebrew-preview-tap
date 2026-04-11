# Generated with JReleaser 1.22.0 at 2026-04-11T13:36:16.436328502Z

class StreamxAT203Rc78709dc < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.78709dc"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.78709dc/streamx-2.0.3-rc.78709dc-linux-aarch64.zip"
    sha256 "00b3d6c064f66f83d0674a52e230083a3072566c7dfb798fdc1995253d89abb9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.78709dc/streamx-2.0.3-rc.78709dc-linux-x86_64.zip"
    sha256 "b3f42d464daa7303d1a5971a12d0a8050452e91faa3c9f562e02ab9a79772f1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.78709dc/streamx-2.0.3-rc.78709dc-macos-aarch64.zip"
    sha256 "50bc9a5536a0694fa12bf7a9f0f01fb115570f82ea4b2d4b88961db0ce37a828"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.78709dc/streamx-2.0.3-rc.78709dc-macos-x86_64.zip"
    sha256 "e87549c42f335812d7dc01c9ccfa788aaa9aa44ae21c1b90c5081397bae19757"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.78709dc", output
  end
end
