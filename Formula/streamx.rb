# Generated with JReleaser 1.22.0 at 2026-03-10T13:42:02.943639886Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.7-rc.2.17b6fd6"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.2.17b6fd6/streamx-0.5.7-rc.2.17b6fd6-linux-aarch64.zip"
    sha256 "653f7d17729655ca77cf27406483c0fedb068f858b3e556fa9fe27459caf43a4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.2.17b6fd6/streamx-0.5.7-rc.2.17b6fd6-linux-x86_64.zip"
    sha256 "180a48081bd67014b03b2023c6da1f0849f45adfe1c9daa87cc614128452aeaa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.2.17b6fd6/streamx-0.5.7-rc.2.17b6fd6-macos-aarch64.zip"
    sha256 "560edd6e46043991591784e331db9987aaa38538c4d9e26b10df0bfb744259a4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.2.17b6fd6/streamx-0.5.7-rc.2.17b6fd6-macos-x86_64.zip"
    sha256 "3b798fb3b13d352586e33f1a71c6cb30b06f5de77f060dbfd8418febaa503e50"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.7-rc.2.17b6fd6", output
  end
end
