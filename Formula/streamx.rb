# Generated with JReleaser 1.22.0 at 2026-03-31T07:17:29.951039114Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.9db4d9f"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.9db4d9f/streamx-2.0.0-rc.9db4d9f-linux-aarch64.zip"
    sha256 "648e3d782de61c0e6a3e6a8e832c54649390ab0ea279d40a44ccf3500d47cc00"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.9db4d9f/streamx-2.0.0-rc.9db4d9f-linux-x86_64.zip"
    sha256 "7c95312c8562fdf8d8327f9c9bdea087bfeb2a666735c063bee7cfb07f381ed1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.9db4d9f/streamx-2.0.0-rc.9db4d9f-macos-aarch64.zip"
    sha256 "7ec1efc24d820181d7dd4f408afeded3364d000fc767ccea77b486b06d8330b0"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.9db4d9f/streamx-2.0.0-rc.9db4d9f-macos-x86_64.zip"
    sha256 "cf61980407c26b58a2c08b7949cea6a99e46a5d1d8bd361ad6bbe17f3efaf293"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.9db4d9f", output
  end
end
