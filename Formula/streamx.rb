# Generated with JReleaser 1.22.0 at 2026-03-25T16:46:04.149468471Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.fd401b0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.fd401b0/streamx-2.0.0-rc.fd401b0-linux-aarch64.zip"
    sha256 "3ad620c52b451ed3b1511fd8aa8a9c615d6f5ca4f35bb2e2a2ddb45563a810d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.fd401b0/streamx-2.0.0-rc.fd401b0-linux-x86_64.zip"
    sha256 "8f86c9257d19faef9a545898b8f1a8a07e75e06e5ff00e2624c229cb0dc116db"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.fd401b0/streamx-2.0.0-rc.fd401b0-macos-aarch64.zip"
    sha256 "308733558d0130faac8d3ee3357afe1bfe8d5cb2a9667817eea8b089af95c0ee"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.fd401b0/streamx-2.0.0-rc.fd401b0-macos-x86_64.zip"
    sha256 "0d16cd2d8b6e1c7300df1595de5ba7b191de1b0324d3a57b6c7e55e9ea186813"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.fd401b0", output
  end
end
