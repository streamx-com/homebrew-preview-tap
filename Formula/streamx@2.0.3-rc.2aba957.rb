# Generated with JReleaser 1.22.0 at 2026-04-08T10:46:56.679471139Z

class StreamxAT203Rc2aba957 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.2aba957"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2aba957/streamx-2.0.3-rc.2aba957-linux-aarch64.zip"
    sha256 "d589c862c07b3cae7f6ec5372202333632e8d1587e85b662708b7e4dae164cfa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2aba957/streamx-2.0.3-rc.2aba957-linux-x86_64.zip"
    sha256 "6e3f1bb88f55b6cef18bb06c9de494012c639f6a4bfc53580efed01dee35e560"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2aba957/streamx-2.0.3-rc.2aba957-macos-aarch64.zip"
    sha256 "c760aae570ac3bed2746f194c5212d98d930f7cfd95ede1e83881b6c82e3b224"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2aba957/streamx-2.0.3-rc.2aba957-macos-x86_64.zip"
    sha256 "16d75a9707b84ac0c9514cdf89a4502d818585072eed7bde027605bc2e43884a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.2aba957", output
  end
end
