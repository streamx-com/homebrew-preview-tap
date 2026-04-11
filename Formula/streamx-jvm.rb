# Generated with JReleaser 1.22.0 at 2026-04-11T19:49:56.608654028Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6a36ffc/streamx-jar-2.0.3-rc.6a36ffc.zip"
  version "2.0.3-rc.6a36ffc"
  sha256 "54c7a71cf88366d4850a687501717603bfd2584a8811e45f8defac4ce19621c2"
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
    assert_match "2.0.3-rc.6a36ffc", output
  end
end
