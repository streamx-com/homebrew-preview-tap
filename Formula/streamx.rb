# Generated with JReleaser 1.22.0 at 2026-04-17T07:06:10.63640178Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.056d096"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.056d096/streamx-2.0.3-rc.056d096-linux-aarch64.zip"
    sha256 "1c5b09d98c2683aa582fb04382d6b7c9d87c6bb2736dae7d87de7c89a57c8f8c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.056d096/streamx-2.0.3-rc.056d096-linux-x86_64.zip"
    sha256 "39e885ad334d360a03f24a9712b669203b0c305271b6b5ea5f3f00b3c2225b5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.056d096/streamx-2.0.3-rc.056d096-macos-aarch64.zip"
    sha256 "e26ea06a7d9acc5cc79de3925ff0471eb9a80ea45ee5250966992d1f1fea4f55"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.056d096/streamx-2.0.3-rc.056d096-macos-x86_64.zip"
    sha256 "97d6231f95cf50a719cc4921d26c8c8ee5168dd2710528f684e3af981f8681bc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.056d096", output
  end
end
