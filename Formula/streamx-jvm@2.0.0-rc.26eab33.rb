# Generated with JReleaser 1.22.0 at 2026-03-31T06:31:37.731890877Z

class StreamxJvmAT200Rc26eab33 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.26eab33/streamx-jar-2.0.0-rc.26eab33.zip"
  version "2.0.0-rc.26eab33"
  sha256 "d876ea37729b94dc980784033e047320c5ec30d770b2cc8635f884bb5239aefa"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.26eab33", output
  end
end
