# Generated with JReleaser 1.22.0 at 2026-03-27T13:21:10.979903786Z

class StreamxAT200RcC1af0de < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0-rc.c1af0de"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.c1af0de/streamx-2.0.0-rc.c1af0de-linux-aarch64.zip"
    sha256 "bd968ef9c9d8b47d4bddb304e83575dfcc7d5717fd59c3eaccc0ebc81faf8908"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.c1af0de/streamx-2.0.0-rc.c1af0de-linux-x86_64.zip"
    sha256 "073aa99de626923531d857e093355d193646dad73fb82018d84376b9c9879f80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.c1af0de/streamx-2.0.0-rc.c1af0de-macos-aarch64.zip"
    sha256 "3407242ff05f25c7cdd07e6e3c6f9a270e4228b43424d095352c09d409680ea4"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.0-rc.c1af0de/streamx-2.0.0-rc.c1af0de-macos-x86_64.zip"
    sha256 "14ca38b92e877a385041a04fe74486d6394289ecbfea8a58b912ed8b5f58c692"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0-rc.c1af0de", output
  end
end
