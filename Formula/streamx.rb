# Generated with JReleaser 1.22.0 at 2026-07-29T09:13:04.242128174Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.4-rc.15abeff"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.15abeff/streamx-2.0.4-rc.15abeff-linux-aarch64.zip"
    sha256 "2d7cecce28c3f36ca80a3d65f6a16ae2c72d7bf9318f8e3fc287cb64129483b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.15abeff/streamx-2.0.4-rc.15abeff-linux-x86_64.zip"
    sha256 "bc7ad56e941161a0ad4c37f3e7cc9d03a7857ed508001b738314d0f6ee1bd529"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.15abeff/streamx-2.0.4-rc.15abeff-macos-aarch64.zip"
    sha256 "499c438381425ff232f4fb11dc425676e53f67643b83c1b7e7f720b7b0d726dd"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.15abeff/streamx-2.0.4-rc.15abeff-macos-x86_64.zip"
    sha256 "a287bdfea11176cc01850eb60817d054e491f8a38c5cf16ba31e25a29631920e"
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
    assert_match "2.0.4-rc.15abeff", output
  end
end
