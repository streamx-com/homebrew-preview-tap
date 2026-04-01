# Generated with JReleaser 1.22.0 at 2026-04-01T10:30:53.580239894Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.1-rc.35d3ac6"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.35d3ac6/streamx-2.0.1-rc.35d3ac6-linux-aarch64.zip"
    sha256 "22606db4ecda0c663e25acc8c412b296fbed40fbcbed6027e9eb6049a5609d17"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.35d3ac6/streamx-2.0.1-rc.35d3ac6-linux-x86_64.zip"
    sha256 "89c899d4224cbe0ac2168aa87b8c707dc8b3f3e02b8754e750da4f5db2e14b56"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.35d3ac6/streamx-2.0.1-rc.35d3ac6-macos-aarch64.zip"
    sha256 "98031c030045ed642b85af94f7602600b5072f062500fa296e24fd0f907b7d26"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.35d3ac6/streamx-2.0.1-rc.35d3ac6-macos-x86_64.zip"
    sha256 "30b4e9e9579397f6965f251c4625ad54a2a0b93e64ad0f78b664c392a4b457cd"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1-rc.35d3ac6", output
  end
end
