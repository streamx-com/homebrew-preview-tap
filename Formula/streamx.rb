# Generated with JReleaser 1.22.0 at 2026-08-25T08:59:21.71504885Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.1-rc.4b5a2e0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.1-rc.4b5a2e0/streamx-2.1.1-rc.4b5a2e0-linux-aarch64.zip"
    sha256 "c9c8e4a69473907150832a44f9a00b3afe69e8be9111c26fe59007ddea72bfcc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.1-rc.4b5a2e0/streamx-2.1.1-rc.4b5a2e0-linux-x86_64.zip"
    sha256 "263c969cd88c921b5ccf0af4fb7193ba11fbabed7171b2a6bed99dfd65e46017"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.1-rc.4b5a2e0/streamx-2.1.1-rc.4b5a2e0-macos-aarch64.zip"
    sha256 "c96de82c641c8a265eb508cc0eba46a3e422f0af27e3bd797f470a7380e93dd3"
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
    assert_match "2.1.1-rc.4b5a2e0", output
  end
end
