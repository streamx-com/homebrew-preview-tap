# Generated with JReleaser 1.22.0 at 2026-07-29T13:44:27.558456775Z

class StreamxAT204Rc63fbda8 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.4-rc.63fbda8"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.63fbda8/streamx-2.0.4-rc.63fbda8-linux-aarch64.zip"
    sha256 "fc5a913c0ccd56c4e0ad28a6c7e5cb6eb447c6dd6aa346bb0a6ba76f65edb55e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.63fbda8/streamx-2.0.4-rc.63fbda8-linux-x86_64.zip"
    sha256 "054dfab019a3a63c2542690343ac3f462211667b869805c74d8cacba45340fa9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.63fbda8/streamx-2.0.4-rc.63fbda8-macos-aarch64.zip"
    sha256 "0ce5a709c651b51c37f151e555e9d509db6c0c102650c585a993b6e3114e15fb"
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
    assert_match "2.0.4-rc.63fbda8", output
  end
end
