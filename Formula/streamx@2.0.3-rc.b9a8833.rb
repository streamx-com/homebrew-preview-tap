# Generated with JReleaser 1.22.0 at 2026-04-08T08:52:30.022275131Z

class StreamxAT203RcB9a8833 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.b9a8833"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.b9a8833/streamx-2.0.3-rc.b9a8833-linux-aarch64.zip"
    sha256 "45e50fcd9a420c41bd076e73f9dfb7f5d6feab8b1cf91a6e8ad90cbd1523cd82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.b9a8833/streamx-2.0.3-rc.b9a8833-linux-x86_64.zip"
    sha256 "b5ebfb13abfa238488c775b2190e3c6f9a856adbcc56722ab522b18abe2c01de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.b9a8833/streamx-2.0.3-rc.b9a8833-macos-aarch64.zip"
    sha256 "12241ef5f340b7bbde614f4ba3bde63e81a418f18dbf7d382bb4a5924a09bb22"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.b9a8833/streamx-2.0.3-rc.b9a8833-macos-x86_64.zip"
    sha256 "7ae1aba72e22edea1e3daf1abec931d258265245598dee894b9c7695ce6bc0f4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.b9a8833", output
  end
end
