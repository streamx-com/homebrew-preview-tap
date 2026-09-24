# Generated with JReleaser 1.22.0 at 2026-09-24T06:38:22.371173881Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.0-rc.454432d"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.454432d/streamx-2.1.0-rc.454432d-linux-aarch64.zip"
    sha256 "fa912d355195396a1ebd666c955a7a48d7149fc0279d03d682bb128d0dcabb65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.454432d/streamx-2.1.0-rc.454432d-linux-x86_64.zip"
    sha256 "d92e35a2829e29f891d19c9b2fdd6d202588b8c64e84edf5f59cd37199aef9a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.454432d/streamx-2.1.0-rc.454432d-macos-aarch64.zip"
    sha256 "c92ef1c86d987cc0dda3e163fc88f7bf49d082bb7fc9d6f4394514344164064d"
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
    assert_match "2.1.0-rc.454432d", output
  end
end
