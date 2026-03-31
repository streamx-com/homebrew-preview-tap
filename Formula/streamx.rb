# Generated with JReleaser 1.22.0 at 2026-03-31T06:31:37.731890877Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.26eab33"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.26eab33/streamx-2.0.0-rc.26eab33-linux-aarch64.zip"
    sha256 "a70f3b3d142616899036f68a5757d58d54c91ca454b72688c4a194e6e18f87f3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.26eab33/streamx-2.0.0-rc.26eab33-linux-x86_64.zip"
    sha256 "a5e97902d8d519d44903acfaff5531f14e22911b93dfeb430d01f02205c52100"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.26eab33/streamx-2.0.0-rc.26eab33-macos-aarch64.zip"
    sha256 "caf13abded26e0a3fc2de8f42fa3476b0a7350947ee810a56dbca39ab8f7a1db"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.26eab33/streamx-2.0.0-rc.26eab33-macos-x86_64.zip"
    sha256 "7df2bc9110d2519cbaf74bbc6dfd011b491e8c2bcd7d9165263dbf4798d241e1"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.26eab33", output
  end
end
