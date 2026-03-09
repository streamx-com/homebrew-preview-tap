# Generated with JReleaser 1.22.0 at 2026-03-09T15:23:00.132760077Z

class StreamxAT0219Rc229b355d < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.2.19-rc.2.29b355d"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.2.29b355d/streamx-0.2.19-rc.2.29b355d-linux-aarch64.zip"
    sha256 "bcdbbe09d503b6ccd1bdadded066db3a09fcbe2ee9a1939d0d3322083448d777"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.2.29b355d/streamx-0.2.19-rc.2.29b355d-linux-x86_64.zip"
    sha256 "c416123dd9004d1790d5c535c8fc8485221bc01f1eb26ce35959eb031b3a7a9a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.2.29b355d/streamx-0.2.19-rc.2.29b355d-macos-aarch64.zip"
    sha256 "7b5fc7c751e4fe7da44a4d8ef81c19d61e8e5b151eb855a0a4435e1f9d425505"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.2.29b355d/streamx-0.2.19-rc.2.29b355d-macos-x86_64.zip"
    sha256 "b9b1fac3d9d93899a75414d78207a20e5d75b4851891efe4cc14f876b32f4370"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.19-rc.2.29b355d", output
  end
end
