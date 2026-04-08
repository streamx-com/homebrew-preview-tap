# Generated with JReleaser 1.22.0 at 2026-04-08T08:00:08.131294045Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.6e87949"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6e87949/streamx-2.0.3-rc.6e87949-linux-aarch64.zip"
    sha256 "3bf596bc4ff475fe636f4df1ccd89c87291f70ed4e0bb67d9b2c46910c75b633"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6e87949/streamx-2.0.3-rc.6e87949-linux-x86_64.zip"
    sha256 "c26fffc7b06c869b286a7f6b63c8daf773138831ffc8bd51ec048d7b992bb7e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6e87949/streamx-2.0.3-rc.6e87949-macos-aarch64.zip"
    sha256 "e82dd7b72e62d0430166aa482e38f5200d4cd26b517ecbfa2109c8108507c841"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6e87949/streamx-2.0.3-rc.6e87949-macos-x86_64.zip"
    sha256 "c8983c5d862add9d4cf0836be01e3fc158781f9487dbea51ef97291d71c5777d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.6e87949", output
  end
end
