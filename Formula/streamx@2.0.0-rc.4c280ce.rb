# Generated with JReleaser 1.22.0 at 2026-04-01T05:38:43.518807163Z

class StreamxAT200Rc4c280ce < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.4c280ce"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.4c280ce/streamx-2.0.0-rc.4c280ce-linux-aarch64.zip"
    sha256 "ececc71631d15694d355839ad7ca36e45ed73cecff668d8ab65100ede8e679c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.4c280ce/streamx-2.0.0-rc.4c280ce-linux-x86_64.zip"
    sha256 "74212c7951df377be9a80c5cee0657b8a8cce0106b1875075531577bb284bdcf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.4c280ce/streamx-2.0.0-rc.4c280ce-macos-aarch64.zip"
    sha256 "9f882d3f434c61d6f7012c9a7c2c8af3175bda16f096b9ef25df88dbf866d544"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.4c280ce/streamx-2.0.0-rc.4c280ce-macos-x86_64.zip"
    sha256 "19d1d68ad9fd6479fd7145c2abca8961abfc38cce6b5e002070e467d9a1b44a3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.4c280ce", output
  end
end
