# Generated with JReleaser 1.22.0 at 2026-07-24T06:32:18.779282388Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.42953c3/streamx-jar-2.0.4-rc.42953c3.zip"
  version "2.0.4-rc.42953c3"
  sha256 "1d32a5143c4fb68d048a239b66771227ef4edf3d47ef3e75d985b38a2c3a32aa"
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
    assert_match "2.0.4-rc.42953c3", output
  end
end
