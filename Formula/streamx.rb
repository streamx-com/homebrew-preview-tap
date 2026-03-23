# Generated with JReleaser 1.22.0 at 2026-03-23T07:05:46.562667277Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.d26248b"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.d26248b/streamx-2.0.0-rc.d26248b-linux-aarch64.zip"
    sha256 "6e1b001fbcf1ef4f25585ef0ac36c253599fe77c8339aff91edb481ccec7753c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.d26248b/streamx-2.0.0-rc.d26248b-linux-x86_64.zip"
    sha256 "521770388455ffc3a25feee9079c106268277f688cd3b0726fb166eddb534d65"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.d26248b/streamx-2.0.0-rc.d26248b-macos-aarch64.zip"
    sha256 "35c3261b8e09c43dd060bf13d70ba1ea3fd97f2c8f60cf2ed2953179b16d9930"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.d26248b/streamx-2.0.0-rc.d26248b-macos-x86_64.zip"
    sha256 "dc1e9e4fd20d369c751fbb1b4001210c7c3f41b1991d56d0c5c3167e24fa00df"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.d26248b", output
  end
end
