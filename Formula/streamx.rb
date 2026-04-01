# Generated with JReleaser 1.22.0 at 2026-04-01T08:41:07.661094734Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.1-rc.0ecc0d8"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.0ecc0d8/streamx-2.0.1-rc.0ecc0d8-linux-aarch64.zip"
    sha256 "c9cf30c6f76122c465628b55292f15fa8f9c0eb2758162b9f84ea1636c6af090"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.0ecc0d8/streamx-2.0.1-rc.0ecc0d8-linux-x86_64.zip"
    sha256 "e1841592da60eaa646b2be765251dd16d04e3c3caa602cc011c0e318b88f53a4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.0ecc0d8/streamx-2.0.1-rc.0ecc0d8-macos-aarch64.zip"
    sha256 "25a339de7798123a9dc4d6ab1096dfccdd486e2db1c51e095a372100c95d7d7e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.0ecc0d8/streamx-2.0.1-rc.0ecc0d8-macos-x86_64.zip"
    sha256 "ef006adf11b44954d2d4ea516b3f3015e73920380c39b177eea7e55647d72e6e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1-rc.0ecc0d8", output
  end
end
