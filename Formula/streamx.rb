# Generated with JReleaser 1.22.0 at 2026-04-11T17:05:05.564531804Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.2874bde"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2874bde/streamx-2.0.3-rc.2874bde-linux-aarch64.zip"
    sha256 "096cb8793afe76b84f19856254963639f513fc784e4eb7ac9951e0d9220be89c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2874bde/streamx-2.0.3-rc.2874bde-linux-x86_64.zip"
    sha256 "b6f3947f3c2e756d131ab285f0b0f9ad19477296ec1b642dc986185b6c9f5f37"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2874bde/streamx-2.0.3-rc.2874bde-macos-aarch64.zip"
    sha256 "4c71ee22833bc3845ee5467eee514560b70cceb752c9b3fdbdda4da96808c3dc"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2874bde/streamx-2.0.3-rc.2874bde-macos-x86_64.zip"
    sha256 "4d75d56ef212ba2e8948b7660b92c42014bf627097f2275995036027cffabd63"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"

    # Generate and install shell completions
    output = Utils.safe_popen_read(bin/"streamx", "completion", "bash")
    (bash_completion/"streamx").write output

    output = Utils.safe_popen_read(bin/"streamx", "completion", "zsh")
    (zsh_completion/"_streamx").write output
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.2874bde", output
  end
end
