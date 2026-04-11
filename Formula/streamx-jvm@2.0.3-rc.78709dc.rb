# Generated with JReleaser 1.22.0 at 2026-04-11T13:36:16.436328502Z

class StreamxJvmAT203Rc78709dc < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.78709dc/streamx-jar-2.0.3-rc.78709dc.zip"
  version "2.0.3-rc.78709dc"
  sha256 "f6fd0d8453d4ed64c449c7d07864c0e7a653311fe3f420a0d37c80f2b6c99a2a"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")

    # Generate and install shell completions
    output = Utils.safe_popen_read(bin/"streamx", "completion", "bash")
    (bash_completion/"streamx").write output

    output = Utils.safe_popen_read(bin/"streamx", "completion", "zsh")
    (zsh_completion/"_streamx").write output
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.78709dc", output
  end
end
