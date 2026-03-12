# Generated with JReleaser 1.22.0 at 2026-03-12T06:28:15.179163095Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.13-rc.ba0e2be"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.13-rc.ba0e2be/streamx-0.5.13-rc.ba0e2be-linux-aarch64.zip"
    sha256 "8c654278aeb3a27d24451c2aed95cb1a203e1b817f18043f97f57bda863777b9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.13-rc.ba0e2be/streamx-0.5.13-rc.ba0e2be-linux-x86_64.zip"
    sha256 "7259f35374ddeace0efc44118ed90e85d0a7932a05f23163e4b52ad2b3fba8ea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.13-rc.ba0e2be/streamx-0.5.13-rc.ba0e2be-macos-aarch64.zip"
    sha256 "bd7e0c73359a4e91f93b6ce1ab79eb3f1a7b0c20256eca8d9b2c4fa6c450887a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.13-rc.ba0e2be/streamx-0.5.13-rc.ba0e2be-macos-x86_64.zip"
    sha256 "cd5cfdd46d726fb964763ac396e1364a58a5e1d35802860d4327f20433432c35"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.13-rc.ba0e2be", output
  end
end
