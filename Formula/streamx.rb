# Generated with JReleaser 1.22.0 at 2026-03-31T07:42:20.343475624Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.8effa75"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8effa75/streamx-2.0.0-rc.8effa75-linux-aarch64.zip"
    sha256 "0f8348a6add053d734288a276dc9b0222f1ed633f90c95da65639d055962c2b3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8effa75/streamx-2.0.0-rc.8effa75-linux-x86_64.zip"
    sha256 "e5264a79f53eace608f42ce53d354656c1d858e691e85ba62c94ecd866c4450d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8effa75/streamx-2.0.0-rc.8effa75-macos-aarch64.zip"
    sha256 "d47d4a7650f2a3fe2ee7b8236fd2838bb9a4a7389d90f3f9ad8a15fe8f599567"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8effa75/streamx-2.0.0-rc.8effa75-macos-x86_64.zip"
    sha256 "94aaa485686ec17a9abba331d778e10c352fa259ca57aa879a9e157e5e085f7a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.8effa75", output
  end
end
