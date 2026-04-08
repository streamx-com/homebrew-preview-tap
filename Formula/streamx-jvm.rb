# Generated with JReleaser 1.22.0 at 2026-04-08T08:52:30.022275131Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.b9a8833/streamx-jar-2.0.3-rc.b9a8833.zip"
  version "2.0.3-rc.b9a8833"
  sha256 "50d99119491d478a0e93b256e23eb5afb4610af03c3bcbec8a842cf6c8233c3b"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.b9a8833", output
  end
end
