# Generated with JReleaser 1.22.0 at 2026-04-11T08:01:13.926436628Z

class StreamxJvmAT203Rc06024d3 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.06024d3/streamx-jar-2.0.3-rc.06024d3.zip"
  version "2.0.3-rc.06024d3"
  sha256 "cf55f82e282a0c6219018f56801471da2823d57c882614483761a62a8d97fca3"
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
    assert_match "2.0.3-rc.06024d3", output
  end
end
