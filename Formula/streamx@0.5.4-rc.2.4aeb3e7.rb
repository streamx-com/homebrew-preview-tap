# Generated with JReleaser 1.22.0 at 2026-03-10T11:28:40.063104418Z

class StreamxAT054Rc24aeb3e7 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.4-rc.2.4aeb3e7"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.2.4aeb3e7/streamx-0.5.4-rc.2.4aeb3e7-linux-aarch64.zip"
    sha256 "843e4ea8d0024bcd5c597b1964b821c4c69c0111f796dd6b389dfe09b7dc0022"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.2.4aeb3e7/streamx-0.5.4-rc.2.4aeb3e7-linux-x86_64.zip"
    sha256 "28977487fdfa1cd5c27a6d503b1eec4e63abc2c21674b675a332596d35fd40f7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.2.4aeb3e7/streamx-0.5.4-rc.2.4aeb3e7-macos-aarch64.zip"
    sha256 "d6e21aabb350cf637e7e66bf0fed3a4914d630bbf8a3b5ddc55c1ed28f88c2b5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.4-rc.2.4aeb3e7/streamx-0.5.4-rc.2.4aeb3e7-macos-x86_64.zip"
    sha256 "ecfd85360cfe06c5099575cd64436b95544a1621b152920699393ef44765bd01"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.4-rc.2.4aeb3e7", output
  end
end
