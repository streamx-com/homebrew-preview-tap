# Generated with JReleaser 1.22.0 at 2026-03-31T08:11:09.14638865Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.f3207de/streamx-jar-2.0.0-rc.f3207de.zip"
  version "2.0.0-rc.f3207de"
  sha256 "ae141423ccdaea49547cb949ed3b2144ec074dd52cba9fc3778912bddb2b9558"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.f3207de", output
  end
end
