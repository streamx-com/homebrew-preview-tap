# Generated with JReleaser 1.22.0 at 2026-07-29T09:13:04.242128174Z

class StreamxJvmAT204Rc15abeff < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.15abeff/streamx-jar-2.0.4-rc.15abeff.zip"
  version "2.0.4-rc.15abeff"
  sha256 "696888e20d5118618121db0df6da014ca9baad35a65648f69e6ea3aa1ddf35db"
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
    assert_match "2.0.4-rc.15abeff", output
  end
end
