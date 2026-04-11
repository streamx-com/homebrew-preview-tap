# Generated with JReleaser 1.22.0 at 2026-04-11T08:01:13.926436628Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.06024d3"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.06024d3/streamx-2.0.3-rc.06024d3-linux-aarch64.zip"
    sha256 "b982f7a0c3f7266768f30623513653ea3d0fe62bf5e78c51878a7be34e078eb3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.06024d3/streamx-2.0.3-rc.06024d3-linux-x86_64.zip"
    sha256 "587fcfae682d1af8e5c39a3499dd9c667a597f2ec3b022d8fe2c9a251e38e334"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.06024d3/streamx-2.0.3-rc.06024d3-macos-aarch64.zip"
    sha256 "75164b777451c0f483a9c9a8957b162721903393c56b8f06bb93d2cec9f127f7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.06024d3/streamx-2.0.3-rc.06024d3-macos-x86_64.zip"
    sha256 "51e48831915d888aab9be54459df679d896f30b4b3286115be865bea915b4e16"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.06024d3", output
  end
end
