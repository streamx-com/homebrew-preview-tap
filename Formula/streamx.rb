# Generated with JReleaser 1.22.0 at 2026-03-11T12:43:00.260160422Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.10-rc.cae0630"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.10-rc.cae0630/streamx-0.5.10-rc.cae0630-linux-aarch64.zip"
    sha256 "9740f43f75d05b2895c88bc7db02d3d6f9cd6075d6b0f0dd8761764a8b755803"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.10-rc.cae0630/streamx-0.5.10-rc.cae0630-linux-x86_64.zip"
    sha256 "2ee05ad3cb231b06ecfddf680d32e8dc374ce4cfccd321e7b989c10ff74dad24"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.10-rc.cae0630/streamx-0.5.10-rc.cae0630-macos-aarch64.zip"
    sha256 "54a668ddfef2d92d32a42b3d7399014a78a19f517f9c0fdf678a8965f72c6e7f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.10-rc.cae0630/streamx-0.5.10-rc.cae0630-macos-x86_64.zip"
    sha256 "05fb68ad42c7e900debd931f5dc71720e76abbf46866c363a7c83f103fe03244"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.10-rc.cae0630", output
  end
end
