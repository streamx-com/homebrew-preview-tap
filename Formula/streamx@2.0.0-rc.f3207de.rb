# Generated with JReleaser 1.22.0 at 2026-03-31T08:11:09.14638865Z

class StreamxAT200RcF3207de < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.f3207de"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f3207de/streamx-2.0.0-rc.f3207de-linux-aarch64.zip"
    sha256 "6254cc1bc7a67ced22791a9bc40f020d240cb1c3c4b7fbda68a1c97bbf1b01a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f3207de/streamx-2.0.0-rc.f3207de-linux-x86_64.zip"
    sha256 "0362b37d536e2ea1d59e8dbf523451c7de62096ec47cb33250208d5b5cd1df34"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f3207de/streamx-2.0.0-rc.f3207de-macos-aarch64.zip"
    sha256 "eb6875ff2d1961d7c72db71168fdbdb1317a7937a318f1a877cec0650fe8adbc"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f3207de/streamx-2.0.0-rc.f3207de-macos-x86_64.zip"
    sha256 "0416139674cf8fed98e72c53be72459fef13db6cfedf05cc25f9a8da8a107e99"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.f3207de", output
  end
end
