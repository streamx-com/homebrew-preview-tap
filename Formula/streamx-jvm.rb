# Generated with JReleaser 1.22.0 at 2026-04-08T08:00:08.131294045Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6e87949/streamx-jar-2.0.3-rc.6e87949.zip"
  version "2.0.3-rc.6e87949"
  sha256 "f3a408329daf6d4c8b08bd80841fb6a5c5c053a9d0db2f2d28937e692e003873"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.6e87949", output
  end
end
