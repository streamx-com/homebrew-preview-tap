# Generated with JReleaser 1.22.0 at 2026-03-10T09:19:20.161996724Z

class StreamxAT053Rc16012ba6 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.3-rc.1.6012ba6"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.3-rc.1.6012ba6/streamx-0.5.3-rc.1.6012ba6-linux-aarch64.zip"
    sha256 "5c2cf9297e419ec2552ef6c0527fb48ed8a0aa6ac0829bd7fd085fd2a0479ffd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.3-rc.1.6012ba6/streamx-0.5.3-rc.1.6012ba6-linux-x86_64.zip"
    sha256 "49928a3ab566d3c48c47deff23d18e111d3ccd99a57aad81fbb7736c16d8bd3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.3-rc.1.6012ba6/streamx-0.5.3-rc.1.6012ba6-macos-aarch64.zip"
    sha256 "b4dc07ff333ce76435e04753ed35d12d68d1c94fbf636766b30b2d6883485ea7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.3-rc.1.6012ba6/streamx-0.5.3-rc.1.6012ba6-macos-x86_64.zip"
    sha256 "e13f3d0500d911e748c9736aea3198a82c525022899d98daa9a8801b11d02699"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.3-rc.1.6012ba6", output
  end
end
