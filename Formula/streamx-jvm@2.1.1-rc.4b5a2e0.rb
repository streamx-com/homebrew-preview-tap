# Generated with JReleaser 1.22.0 at 2026-08-25T08:59:21.71504885Z

class StreamxJvmAT211Rc4b5a2e0 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.1-rc.4b5a2e0/streamx-jar-2.1.1-rc.4b5a2e0.zip"
  version "2.1.1-rc.4b5a2e0"
  sha256 "f1c14e4eb7721a7769c276db5a086d88ae582f26cb63fd7605a3d3530f9c1b03"
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
    assert_match "2.1.1-rc.4b5a2e0", output
  end
end
