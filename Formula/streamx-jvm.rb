# Generated with JReleaser 1.22.0 at 2026-04-08T09:23:52.158440025Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.c718594/streamx-jar-2.0.3-rc.c718594.zip"
  version "2.0.3-rc.c718594"
  sha256 "607c192c748ffbde1544e5a1306ce93477fb8181d4866532cade3a079bc8c45e"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.c718594", output
  end
end
