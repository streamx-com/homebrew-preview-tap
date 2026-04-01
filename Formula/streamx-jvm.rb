# Generated with JReleaser 1.22.0 at 2026-04-01T08:41:07.661094734Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.1-rc.0ecc0d8/streamx-jar-2.0.1-rc.0ecc0d8.zip"
  version "2.0.1-rc.0ecc0d8"
  sha256 "bc2704649ce6324c164eb3d81660960c58d813e4a8795af139048aed12fe278c"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1-rc.0ecc0d8", output
  end
end
