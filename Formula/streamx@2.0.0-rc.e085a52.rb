# Generated with JReleaser 1.22.0 at 2026-03-27T08:07:17.948631027Z

class StreamxAT200RcE085a52 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.e085a52"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.e085a52/streamx-2.0.0-rc.e085a52-linux-aarch64.zip"
    sha256 "a42f45279ba4a665c26f887ab73b586159e518809b0f695021574904c42db840"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.e085a52/streamx-2.0.0-rc.e085a52-linux-x86_64.zip"
    sha256 "17c9bdaac074baaae7dd6b8bfd90173b9a06f4a4a2a7cb1449a8ad15048babac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.e085a52/streamx-2.0.0-rc.e085a52-macos-aarch64.zip"
    sha256 "5b94e07c62a04408e8014ab0e7e55c57ae9ab19d3d44ef8bede06d3322de19ac"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.e085a52/streamx-2.0.0-rc.e085a52-macos-x86_64.zip"
    sha256 "fa80452a7ddce51de160670a01af45e8e57664306c30eef780a5420a774db9b8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.e085a52", output
  end
end
