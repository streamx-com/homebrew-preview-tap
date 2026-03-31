# Generated with JReleaser 1.22.0 at 2026-03-31T07:17:29.951039114Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.9db4d9f/streamx-jar-2.0.0-rc.9db4d9f.zip"
  version "2.0.0-rc.9db4d9f"
  sha256 "7622339e1370e8546caa3c82d571a4bed6879771ba689ab1f86542eed3a1bce2"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.9db4d9f", output
  end
end
