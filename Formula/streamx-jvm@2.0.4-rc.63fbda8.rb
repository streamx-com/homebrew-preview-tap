# Generated with JReleaser 1.22.0 at 2026-07-29T13:44:27.558456775Z

class StreamxJvmAT204Rc63fbda8 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.4-rc.63fbda8/streamx-jar-2.0.4-rc.63fbda8.zip"
  version "2.0.4-rc.63fbda8"
  sha256 "cc34d7f06493a1e9c2b896870b3c301e4879544676112c4f691b73226a7de74f"
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
    assert_match "2.0.4-rc.63fbda8", output
  end
end
