# Generated with JReleaser 1.22.0 at 2026-07-29T08:41:19.551689541Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.4-rc.bd5c66b"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.bd5c66b/streamx-2.0.4-rc.bd5c66b-linux-aarch64.zip"
    sha256 "711a3696e532f3e25b10e158296517a82d3acd0d98faa086fc3fd15756fecdb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.bd5c66b/streamx-2.0.4-rc.bd5c66b-linux-x86_64.zip"
    sha256 "7788b59bdb0f3e2a080810a2a4edcab1b881b3c042f704f7c21322f2cc3e857d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.bd5c66b/streamx-2.0.4-rc.bd5c66b-macos-aarch64.zip"
    sha256 "d426492cfafdd4a36d8d87b29b267cfb33115569c01353569f8251f7a2c0b5a5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.bd5c66b/streamx-2.0.4-rc.bd5c66b-macos-x86_64.zip"
    sha256 "b717e12eb387d973b23b44506a383dafb6ec9a6725a7028cb68e4cbe3944ed90"
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
    assert_match "2.0.4-rc.bd5c66b", output
  end
end
