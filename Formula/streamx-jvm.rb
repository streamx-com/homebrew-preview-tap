# Generated with JReleaser 1.22.0 at 2026-04-01T10:30:53.580239894Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.35d3ac6/streamx-jar-2.0.1-rc.35d3ac6.zip"
  version "2.0.1-rc.35d3ac6"
  sha256 "ef9a451edb0a0da6ac29a782fb057b220ff12a1a479314beaae7166586e497e2"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1-rc.35d3ac6", output
  end
end
