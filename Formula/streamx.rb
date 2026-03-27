# Generated with JReleaser 1.22.0 at 2026-03-27T08:34:49.2476757Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.8f6605f"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8f6605f/streamx-2.0.0-rc.8f6605f-linux-aarch64.zip"
    sha256 "5f8b7b6e8cc6035ec8fa997c66e1a0fb13c9d27906561c3e770a5e067d413e6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8f6605f/streamx-2.0.0-rc.8f6605f-linux-x86_64.zip"
    sha256 "78bb9ccbdeed25e5e022f96c5dc371a18465e779063a3954d2c80cb4f90b1305"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8f6605f/streamx-2.0.0-rc.8f6605f-macos-aarch64.zip"
    sha256 "e655bc11ffae08342913219f724ee72e087938d2383dd8f63674c57e46bf3bb4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8f6605f/streamx-2.0.0-rc.8f6605f-macos-x86_64.zip"
    sha256 "6b0fa27058951aed7359ae0680c57df90a9d778d887d8b037ddd275c27d8e148"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.8f6605f", output
  end
end
