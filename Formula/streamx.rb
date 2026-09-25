# Generated with JReleaser 1.22.0 at 2026-09-25T06:58:06.130373457Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.2-rc.abaa726"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.2-rc.abaa726/streamx-2.1.2-rc.abaa726-linux-aarch64.zip"
    sha256 "3dce66fb0ae2a62baba4e77787137f881ee928f07169658fd326f453a73f4dc7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.2-rc.abaa726/streamx-2.1.2-rc.abaa726-linux-x86_64.zip"
    sha256 "dec7d0a138dc69a8cf533a39053ab57c95aea375e976e811b1c30445845d2bd5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.2-rc.abaa726/streamx-2.1.2-rc.abaa726-macos-aarch64.zip"
    sha256 "c7cb6b3199312560e34c5b4007ae94a2e9e8cb05caadb07d42ee12d8c6a8bf62"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.1.2-rc.abaa726", output
  end
end
