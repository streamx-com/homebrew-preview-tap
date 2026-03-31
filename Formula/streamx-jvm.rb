# Generated with JReleaser 1.22.0 at 2026-03-31T07:42:20.343475624Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.8effa75/streamx-jar-2.0.0-rc.8effa75.zip"
  version "2.0.0-rc.8effa75"
  sha256 "068b49301a15afaa0e822a823a229a696d7a0d59ffbb792b0eec70efb47e916b"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.8effa75", output
  end
end
