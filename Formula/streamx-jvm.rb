# Generated with JReleaser 1.22.0 at 2026-04-08T07:22:48.446960315Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6510675/streamx-jar-2.0.3-rc.6510675.zip"
  version "2.0.3-rc.6510675"
  sha256 "f2b48ba6b218f07012b063df7dd9b6ba385d080ef56eb28345de4fdbd6e7cab7"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.6510675", output
  end
end
