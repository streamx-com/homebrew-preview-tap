# Generated with JReleaser 1.22.0 at 2026-03-27T13:53:15.00235449Z

class StreamxAT200RcBefcddf < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.befcddf"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.befcddf/streamx-2.0.0-rc.befcddf-linux-aarch64.zip"
    sha256 "cdd4fcce53497b6275c7923cea227fbbdb14a1865a3f256339b5f44a3efb5934"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.befcddf/streamx-2.0.0-rc.befcddf-linux-x86_64.zip"
    sha256 "a8e7fa9a0344fbb90fd979f559a530341caffb86a6f82676b7b48ed8e1547fc7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.befcddf/streamx-2.0.0-rc.befcddf-macos-aarch64.zip"
    sha256 "2ebbce18620644fae1f4ec8ca9d5b2a3345cecda778d7964350fd58726ffe463"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.befcddf/streamx-2.0.0-rc.befcddf-macos-x86_64.zip"
    sha256 "a44ff53effccfe7f4fbfaf140d3a87ad53730f6680f364b63aca16deb090aa9b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.befcddf", output
  end
end
