# Generated with JReleaser 1.22.0 at 2026-07-23T13:46:41.197571616Z

class StreamxJvmAT204Rc0a21691 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.0a21691/streamx-jar-2.0.4-rc.0a21691.zip"
  version "2.0.4-rc.0a21691"
  sha256 "3de1ddde0e3d6dd07f1f05af7ae3d9a23dcc46d73ec1d823716a6250f3c5f7c7"
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
    assert_match "2.0.4-rc.0a21691", output
  end
end
