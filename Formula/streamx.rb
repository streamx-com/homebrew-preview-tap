# Generated with JReleaser 1.22.0 at 2026-03-10T11:59:40.793056052Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.6-rc.1.1758ddc"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.6-rc.1.1758ddc/streamx-0.5.6-rc.1.1758ddc-linux-aarch64.zip"
    sha256 "64ecf4bd772e5627f69975c7a02ea04f589dffb526bf55e8bb20902b25546bef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.6-rc.1.1758ddc/streamx-0.5.6-rc.1.1758ddc-linux-x86_64.zip"
    sha256 "966b431016a0cd26c04e41ed4a3eb7173fa084a7c9d0402cf13789c21207dfd3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.6-rc.1.1758ddc/streamx-0.5.6-rc.1.1758ddc-macos-aarch64.zip"
    sha256 "72ac89bfdc09da10b2b2629187d008408e95de2429a3fc5fe49575968a1b27a8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.6-rc.1.1758ddc/streamx-0.5.6-rc.1.1758ddc-macos-x86_64.zip"
    sha256 "0a49cff391390d30ddc90cbdebf73762eeeb6c390f994d2ecc0f23be0f998a71"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.6-rc.1.1758ddc", output
  end
end
