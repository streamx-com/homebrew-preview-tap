# Generated with JReleaser 1.22.0 at 2026-03-27T09:24:15.23483939Z

class StreamxAT200Rc0f39fb0 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.0f39fb0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.0f39fb0/streamx-2.0.0-rc.0f39fb0-linux-aarch64.zip"
    sha256 "324d6ff2b378f3820d89147e957b9dc729018c497d572364af9ffbecffaa286c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.0f39fb0/streamx-2.0.0-rc.0f39fb0-linux-x86_64.zip"
    sha256 "723c5cb108b7f30d323a3ce29fa8d195fe89715c8d544601472b872c6bc3dd6e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.0f39fb0/streamx-2.0.0-rc.0f39fb0-macos-aarch64.zip"
    sha256 "3c04e80f6e540489028f2050045844853c5542bc93e20671817f63f5ffdfdb97"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.0f39fb0/streamx-2.0.0-rc.0f39fb0-macos-x86_64.zip"
    sha256 "627b2c3671a2fc0518bbd2a8166b3dbde26722962d26fb9669f777a04a32bbe2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.0f39fb0", output
  end
end
