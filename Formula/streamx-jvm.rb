# Generated with JReleaser 1.22.0 at 2026-04-17T07:06:10.63640178Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.056d096/streamx-jar-2.0.3-rc.056d096.zip"
  version "2.0.3-rc.056d096"
  sha256 "966560cc72e538f9b0e3dade146edcb8dc6c14641e295ace4d4e3cea6205a220"
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
    assert_match "2.0.3-rc.056d096", output
  end
end
