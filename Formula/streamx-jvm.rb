# Generated with JReleaser 1.22.0 at 2026-09-15T12:02:13.204074034Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.dcd3f6e/streamx-jar-2.1.0-rc.dcd3f6e.zip"
  version "2.1.0-rc.dcd3f6e"
  sha256 "120c7f0c877185e0813fd06fd85d84a8180b6a09dc62c2f3f4278d44ff806140"
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
    assert_match "2.1.0-rc.dcd3f6e", output
  end
end
