# Generated with JReleaser 1.22.0 at 2026-04-11T19:49:56.608654028Z

class StreamxAT203Rc6a36ffc < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.6a36ffc"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6a36ffc/streamx-2.0.3-rc.6a36ffc-linux-aarch64.zip"
    sha256 "a4d48fbc407ed7ee29df1ff94f449269826864fbda16a34e111f0c3b708a3fb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6a36ffc/streamx-2.0.3-rc.6a36ffc-linux-x86_64.zip"
    sha256 "4a8c4fcef513d41a789c7330d72dc091b68b757c79f6beb3ce89099593762a85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6a36ffc/streamx-2.0.3-rc.6a36ffc-macos-aarch64.zip"
    sha256 "aed141c93f5eb99abb59c31073e13c2405447a7d2f807cd4c16aa3fece4993a4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6a36ffc/streamx-2.0.3-rc.6a36ffc-macos-x86_64.zip"
    sha256 "a0d891829acd0d9bd5e5fbf94fc019ef5ed1e563c516e05cf75cd2369c7bd27c"
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
    assert_match "2.0.3-rc.6a36ffc", output
  end
end
