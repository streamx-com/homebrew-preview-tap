# Generated with JReleaser 1.22.0 at 2026-03-17T13:54:36.920498214Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.f77fcf2"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f77fcf2/streamx-2.0.0-rc.f77fcf2-linux-aarch64.zip"
    sha256 "11348fad15e6f71fc7c696636190b8e76c4858aec4d4ade3c827e072f8c6c810"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f77fcf2/streamx-2.0.0-rc.f77fcf2-linux-x86_64.zip"
    sha256 "5ee5b73c6e81a3ae50a2ccf497e07315dd91f282001f56eb6e51453a8cc4fe02"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f77fcf2/streamx-2.0.0-rc.f77fcf2-macos-aarch64.zip"
    sha256 "28536e830b83bdac6506652d8509f6cb168a0a8155ec4517faa7aea8719e64c7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f77fcf2/streamx-2.0.0-rc.f77fcf2-macos-x86_64.zip"
    sha256 "eae4a54ca68d1681990f08bbf9bdf61fd90609ff2a289f7dc2846bbad2c3414b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.f77fcf2", output
  end
end
