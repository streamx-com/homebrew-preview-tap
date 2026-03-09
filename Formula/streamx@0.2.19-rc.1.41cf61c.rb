# Generated with JReleaser 1.22.0 at 2026-03-09T14:09:31.156200698Z

class StreamxAT0219rc141cf61c < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.2.19-rc.1.41cf61c"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.1.41cf61c/streamx-0.2.19-rc.1.41cf61c-linux-aarch64.zip"
    sha256 "7b17fb9af37d20e7633a81bad1d45fc8e57e80cdcadec8c1b58f255d13f107a4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.1.41cf61c/streamx-0.2.19-rc.1.41cf61c-linux-x86_64.zip"
    sha256 "ca71824b5980426018a1194152b1261f17ffedf916480695dcf87a6bebfb14c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.1.41cf61c/streamx-0.2.19-rc.1.41cf61c-macos-aarch64.zip"
    sha256 "332faab862cc27d7f065603f2949ff737f282b90ea9c95e29b541c02ef785ab5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.2.19-rc.1.41cf61c/streamx-0.2.19-rc.1.41cf61c-macos-x86_64.zip"
    sha256 "6b8ab8882be352bd57140a9ddba8af5b27ed194de469aa79a9453fc84e2e9477"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.19-rc.1.41cf61c", output
  end
end
