# Generated with JReleaser 1.22.0 at 2026-04-08T07:22:48.446960315Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.6510675"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6510675/streamx-2.0.3-rc.6510675-linux-aarch64.zip"
    sha256 "8991601ab3f3d78e12732cc0e73e848f1638b1ce3bc319c11d750dca4a17d33b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6510675/streamx-2.0.3-rc.6510675-linux-x86_64.zip"
    sha256 "bee48cab798aedd189e74c7239ffc11843e71bedca1390d1ac2d48876e27fce8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6510675/streamx-2.0.3-rc.6510675-macos-aarch64.zip"
    sha256 "d67712bbf0e9f90d3c6f5972529f409f81e0ed62eee93e1f9aa6b5f456c26119"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.6510675/streamx-2.0.3-rc.6510675-macos-x86_64.zip"
    sha256 "1ea332a05e749110f7bcc3519b00e3b33ce38cd7c75484adf1871fb15243f1bb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.6510675", output
  end
end
