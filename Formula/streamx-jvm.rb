# Generated with JReleaser 1.22.0 at 2026-09-24T06:38:22.371173881Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.454432d/streamx-jar-2.1.0-rc.454432d.zip"
  version "2.1.0-rc.454432d"
  sha256 "e496fcd105efcffac203af7e1a8c9b8230c97a04f0cf2578adbca60c9fb8e84e"
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
    assert_match "2.1.0-rc.454432d", output
  end
end
