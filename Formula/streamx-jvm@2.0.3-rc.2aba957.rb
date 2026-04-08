# Generated with JReleaser 1.22.0 at 2026-04-08T10:46:56.679471139Z

class StreamxJvmAT203Rc2aba957 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2aba957/streamx-jar-2.0.3-rc.2aba957.zip"
  version "2.0.3-rc.2aba957"
  sha256 "96cd5b1708450d2007d7eceea3851741fbdcb297e019edfa0e6b117858e7c084"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.2aba957", output
  end
end
