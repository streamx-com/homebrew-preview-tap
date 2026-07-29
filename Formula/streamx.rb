# Generated with JReleaser 1.22.0 at 2026-07-29T07:29:31.345214322Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.4-rc.fcb0400"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.fcb0400/streamx-2.0.4-rc.fcb0400-linux-aarch64.zip"
    sha256 "5d9126d58a37ec6edb64c52262d42f0a89822b69fa8c90d37ef8d485f1c4d4f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.fcb0400/streamx-2.0.4-rc.fcb0400-linux-x86_64.zip"
    sha256 "9f8873e20d1824fc7887e370563d47e58790dbc74598b2ace6a60368c1b304cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.fcb0400/streamx-2.0.4-rc.fcb0400-macos-aarch64.zip"
    sha256 "d034dcd26c8a188afb008f46c2e1871df9b972b43a2fafd8718f06f0a185bd97"
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
    assert_match "2.0.4-rc.fcb0400", output
  end
end
