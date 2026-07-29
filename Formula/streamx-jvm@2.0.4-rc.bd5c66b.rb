# Generated with JReleaser 1.22.0 at 2026-07-29T08:41:19.551689541Z

class StreamxJvmAT204RcBd5c66b < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.bd5c66b/streamx-jar-2.0.4-rc.bd5c66b.zip"
  version "2.0.4-rc.bd5c66b"
  sha256 "9b7ee25b492d1fec5dc02ae8790b8745c73da0f7cc6a5fc9d290c45b27b02374"
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
    assert_match "2.0.4-rc.bd5c66b", output
  end
end
