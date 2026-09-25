# Generated with JReleaser 1.22.0 at 2026-09-25T06:58:06.130373457Z

class StreamxJvmAT212RcAbaa726 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.2-rc.abaa726/streamx-jar-2.1.2-rc.abaa726.zip"
  version "2.1.2-rc.abaa726"
  sha256 "121e41fdee95141a225726fdf0dd161d6c5539b7326bc4d68bd2886849631670"
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
    assert_match "2.1.2-rc.abaa726", output
  end
end
