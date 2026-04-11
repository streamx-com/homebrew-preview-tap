# Generated with JReleaser 1.22.0 at 2026-04-11T17:05:05.564531804Z

class StreamxJvmAT203Rc2874bde < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.2874bde/streamx-jar-2.0.3-rc.2874bde.zip"
  version "2.0.3-rc.2874bde"
  sha256 "906c14850fd5460de8802d0883ce48c4a61d9cd26f85239a7e2edbc77bef62c7"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")

    # Generate and install shell completions
    output = Utils.safe_popen_read(bin/"streamx", "completion", "bash")
    (bash_completion/"streamx").write output

    output = Utils.safe_popen_read(bin/"streamx", "completion", "zsh")
    (zsh_completion/"_streamx").write output
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.2874bde", output
  end
end
