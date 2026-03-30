# Generated with JReleaser 1.22.0 at 2026-03-30T07:45:31.524516175Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.b89bc8e"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.b89bc8e/streamx-2.0.0-rc.b89bc8e-linux-aarch64.zip"
    sha256 "1dd2777d770a4b49c4cafdc831d9d59829226278feb3470e9e6589175f808eca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.b89bc8e/streamx-2.0.0-rc.b89bc8e-linux-x86_64.zip"
    sha256 "47054c718c28b5af8c98ad0f6d35e05dbb7f79d9c66bd2d8270df169ad6306e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.b89bc8e/streamx-2.0.0-rc.b89bc8e-macos-aarch64.zip"
    sha256 "0e60aa5cd736cc24afb7e0984a318ab592889ade6a3a4301196631687bf67c61"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.b89bc8e/streamx-2.0.0-rc.b89bc8e-macos-x86_64.zip"
    sha256 "099d7e363478005c8c6f670765d4327d64f06d695ebda6a795b7d2d339e3ea79"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.b89bc8e", output
  end
end
