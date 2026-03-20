# Generated with JReleaser 1.22.0 at 2026-03-20T13:13:20.793268545Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.a5a8ec1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a5a8ec1/streamx-2.0.0-rc.a5a8ec1-linux-aarch64.zip"
    sha256 "4d37f7ee056359b76a3780a56539dcac9ba8fe9738eff5c4a1e3a63b8e916044"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a5a8ec1/streamx-2.0.0-rc.a5a8ec1-linux-x86_64.zip"
    sha256 "36559190e90db15884b699d546ceeb8f014d5b0266c4766994a3fa59a3776eb0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a5a8ec1/streamx-2.0.0-rc.a5a8ec1-macos-aarch64.zip"
    sha256 "aa3f063859072c52756f218db8b411601b685b9386ca20b4b00cc48cd626afd7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a5a8ec1/streamx-2.0.0-rc.a5a8ec1-macos-x86_64.zip"
    sha256 "2dc23795e905d9ba945942305c16262c6cb128530f3b3d2dcd180f305581a0b7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.a5a8ec1", output
  end
end
