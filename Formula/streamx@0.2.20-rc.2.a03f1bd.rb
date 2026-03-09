# Generated with JReleaser 1.22.0 at 2026-03-09T17:28:48.773309131Z

class StreamxAT0220Rc2A03f1bd < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.2.20-rc.2.a03f1bd"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.20-rc.2.a03f1bd/streamx-0.2.20-rc.2.a03f1bd-linux-aarch64.zip"
    sha256 "4a387161373ce3fef212813025b7b8e46f60dc32a0b60144fca5e54d9dcd069e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.20-rc.2.a03f1bd/streamx-0.2.20-rc.2.a03f1bd-linux-x86_64.zip"
    sha256 "f57f42bee8ab3508655a67645649037188ebe2c4ac01db353d09c1a8b37f55d3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.20-rc.2.a03f1bd/streamx-0.2.20-rc.2.a03f1bd-macos-aarch64.zip"
    sha256 "bb80c8a79c24dea3bce38a1276d6ded2ccbe7ffcbbc8707932bbb240dd41f0a1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.20-rc.2.a03f1bd/streamx-0.2.20-rc.2.a03f1bd-macos-x86_64.zip"
    sha256 "b7805b13e5bbb4a7a09a842d36e42504564f07885fa134c45b0581a14f5b8429"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.20-rc.2.a03f1bd", output
  end
end
