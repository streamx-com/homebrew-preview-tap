# Generated with JReleaser 1.22.0 at 2026-03-09T12:22:42.62002727Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.2.17-rc.1.2c52f17"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/homebrew-preview-tap/releases/download/0.2.17-rc.1.2c52f17/streamx-0.2.17-rc.1.2c52f17-linux-aarch64.zip"
    sha256 "9a4e3b92c8fecc44c09dc24648051eb7db7bd763258e4fea6572a3f6e711c6b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/homebrew-preview-tap/releases/download/0.2.17-rc.1.2c52f17/streamx-0.2.17-rc.1.2c52f17-linux-x86_64.zip"
    sha256 "a75a271c9224ce6e63e1ad91e84e5353b64eb62367072dedcd761694e5da7baa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/homebrew-preview-tap/releases/download/0.2.17-rc.1.2c52f17/streamx-0.2.17-rc.1.2c52f17-macos-aarch64.zip"
    sha256 "43162bf363797408114a50eb1825ef5adf1e78f515be1ccf98319024dd120f2a"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/homebrew-preview-tap/releases/download/0.2.17-rc.1.2c52f17/streamx-0.2.17-rc.1.2c52f17-macos-x86_64.zip"
    sha256 "b5a32f94ef219c37bf3a32bc121bcfadd06f8fcdb36411abf646c42e28c0453b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.17-rc.1.2c52f17", output
  end
end
