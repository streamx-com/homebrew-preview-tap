# Generated with JReleaser 1.22.0 at 2026-03-30T11:16:53.647490092Z

class StreamxAT200RcA33f971 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.a33f971"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a33f971/streamx-2.0.0-rc.a33f971-linux-aarch64.zip"
    sha256 "9a68e8109e3d6492b62ad11cebe078617cff74937e56b2f613b72f5899f3c804"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a33f971/streamx-2.0.0-rc.a33f971-linux-x86_64.zip"
    sha256 "114631b82a8b9cfdd7555302a7fa20c864d55f10f3b050b6933cc4803e3de698"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a33f971/streamx-2.0.0-rc.a33f971-macos-aarch64.zip"
    sha256 "eb553f0877d8480286fc0d266f0b654174b936bbfb7f38a28a42b3e2f2871faa"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.a33f971/streamx-2.0.0-rc.a33f971-macos-x86_64.zip"
    sha256 "12b4035143e0cd3ac0317fecd7cf037f2afec0f0ffafe427120a0ee146d308c5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.a33f971", output
  end
end
