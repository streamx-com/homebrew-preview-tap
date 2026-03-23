# Generated with JReleaser 1.22.0 at 2026-03-23T10:44:54.980036118Z

class StreamxAT200Rc3e6a808 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.3e6a808"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.3e6a808/streamx-2.0.0-rc.3e6a808-linux-aarch64.zip"
    sha256 "9af5e3503de900e0b96c782dea9d81918b26e917e1ffe166328e7af1b4d2a9c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.3e6a808/streamx-2.0.0-rc.3e6a808-linux-x86_64.zip"
    sha256 "486761a2aa690b320b03dbfedd0e03e26deadefcbc2c560a71f7ff8bb281c8c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.3e6a808/streamx-2.0.0-rc.3e6a808-macos-aarch64.zip"
    sha256 "258a95601810b6c6be6b855be5a2b96aea47bbfb167250d401fe278c1a20ff36"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.3e6a808/streamx-2.0.0-rc.3e6a808-macos-x86_64.zip"
    sha256 "8a689de7aac78dbaa541155ab5babd56755fc627d391da43c93564cfad607cd8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.3e6a808", output
  end
end
