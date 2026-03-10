# Generated with JReleaser 1.22.0 at 2026-03-10T08:22:58.591419458Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.2-rc.1.e5667a2"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.2-rc.1.e5667a2/streamx-0.5.2-rc.1.e5667a2-linux-aarch64.zip"
    sha256 "1081dc985a093152ad4a81e8267ce5089d636339811e3842f6ba792dd7f6ed68"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.2-rc.1.e5667a2/streamx-0.5.2-rc.1.e5667a2-linux-x86_64.zip"
    sha256 "c372436767b8d8eab3b17bc666086042c8e7c7e307253d24f64095de794e1757"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.2-rc.1.e5667a2/streamx-0.5.2-rc.1.e5667a2-macos-aarch64.zip"
    sha256 "10bb4c2c8cc29953cbfb7f969acdbf28d1434a045b556c4bc803523593d480a5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.2-rc.1.e5667a2/streamx-0.5.2-rc.1.e5667a2-macos-x86_64.zip"
    sha256 "dfc2bb5a2fc6db03e014df1baea5b839973438b92473adb0d5541fa4a4957bbe"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.2-rc.1.e5667a2", output
  end
end
