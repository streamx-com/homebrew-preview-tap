# Generated with JReleaser 1.22.0 at 2026-03-10T10:09:47.286288274Z

class StreamxAT054Rc16d190d3 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.4-rc.1.6d190d3"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.1.6d190d3/streamx-0.5.4-rc.1.6d190d3-linux-aarch64.zip"
    sha256 "a8318db61150c8d48b85f28d56047cbd5cc9b88ea971df0eb10fc2b1a30ef8c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.1.6d190d3/streamx-0.5.4-rc.1.6d190d3-linux-x86_64.zip"
    sha256 "6a6b595c072615034832fddfc73681fa8b435950f2fc5aae75daae5b4be96195"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.1.6d190d3/streamx-0.5.4-rc.1.6d190d3-macos-aarch64.zip"
    sha256 "86f571bb8d5aa2b980ce99f8793e2c9f3b3395336994f67ee7aff4fb89338ca7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.1.6d190d3/streamx-0.5.4-rc.1.6d190d3-macos-x86_64.zip"
    sha256 "50804dcfcf4cafdb52b6e44692e272d3ead20a25427ad8e9603615b2e156f6de"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.4-rc.1.6d190d3", output
  end
end
