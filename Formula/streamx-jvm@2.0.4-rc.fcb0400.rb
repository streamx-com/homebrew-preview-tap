# Generated with JReleaser 1.22.0 at 2026-07-29T07:29:31.345214322Z

class StreamxJvmAT204RcFcb0400 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.fcb0400/streamx-jar-2.0.4-rc.fcb0400.zip"
  version "2.0.4-rc.fcb0400"
  sha256 "470e9344ee2ff4afa7883488b8d36c340b986f20020375a0954c216996539619"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.4-rc.fcb0400", output
  end
end
