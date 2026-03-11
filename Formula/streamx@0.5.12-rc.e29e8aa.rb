# Generated with JReleaser 1.22.0 at 2026-03-11T13:57:05.675791523Z

class StreamxAT0512RcE29e8aa < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.12-rc.e29e8aa"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.12-rc.e29e8aa/streamx-0.5.12-rc.e29e8aa-linux-aarch64.zip"
    sha256 "dbadfe6f285b15a1adf4503910885e0ca431728d936a8c1cad3a41f2c1ffaf40"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.12-rc.e29e8aa/streamx-0.5.12-rc.e29e8aa-linux-x86_64.zip"
    sha256 "4548db8604bf0c3715cf2b36cc2ad9e17c4b469f182fa31264cba68765db39bd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.12-rc.e29e8aa/streamx-0.5.12-rc.e29e8aa-macos-aarch64.zip"
    sha256 "69bb1834ef43d56a78238c63a1ca5ab58109a20d9011b1c8cddf2732f4a16d88"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.12-rc.e29e8aa/streamx-0.5.12-rc.e29e8aa-macos-x86_64.zip"
    sha256 "6bd1a56cdd7cd227633a5a25e83d63f4027e00018b8bf5a16f5eb74134d7bdd5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.12-rc.e29e8aa", output
  end
end
