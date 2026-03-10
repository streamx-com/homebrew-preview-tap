# Generated with JReleaser 1.22.0 at 2026-03-10T12:41:39.273876242Z

class StreamxAT057Rc1E40a45b < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.7-rc.1.e40a45b"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.1.e40a45b/streamx-0.5.7-rc.1.e40a45b-linux-aarch64.zip"
    sha256 "db3b1824f1cdabab83b470eb6d97eebc990b3df85e3260ba5560c987f2b2aefc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.1.e40a45b/streamx-0.5.7-rc.1.e40a45b-linux-x86_64.zip"
    sha256 "d7dad06c1a4603a8486f01544406c6d6a1083359b0d2c4ab98445c1fc5711237"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.1.e40a45b/streamx-0.5.7-rc.1.e40a45b-macos-aarch64.zip"
    sha256 "8215d3612222236ef3f9a86fc82f6fd5ee77b7f45a5bc2515bfa9be4dcda0b0a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.7-rc.1.e40a45b/streamx-0.5.7-rc.1.e40a45b-macos-x86_64.zip"
    sha256 "4b5d5415516b29af56f6115e66352b3124abb33873a4d97aaa8d399591ba6760"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.7-rc.1.e40a45b", output
  end
end
