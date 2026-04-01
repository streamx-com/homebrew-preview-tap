# Generated with JReleaser 1.22.0 at 2026-04-01T05:38:43.518807163Z

class StreamxJvmAT200Rc4c280ce < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.4c280ce/streamx-jar-2.0.0-rc.4c280ce.zip"
  version "2.0.0-rc.4c280ce"
  sha256 "aa4687a7c98cea8637b2558eb7b66416e2a33e9b165acd73882a5a17aaa88735"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.4c280ce", output
  end
end
