# Generated with JReleaser 1.22.0 at 2026-04-08T09:23:52.158440025Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3-rc.c718594"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.c718594/streamx-2.0.3-rc.c718594-linux-aarch64.zip"
    sha256 "94f8e06c03425706f1bc915a70538a6a9f189e1988506fc2b49de565ceeb64fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.c718594/streamx-2.0.3-rc.c718594-linux-x86_64.zip"
    sha256 "ba7217be7503be501eb7c758d706d3dc78a1b022ef61dd35253f480abbf4c187"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.c718594/streamx-2.0.3-rc.c718594-macos-aarch64.zip"
    sha256 "1457c53b27d723e8b803e9693cccea3b852efc5e42ae40858294cf13acf6d4af"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.0.3-rc.c718594/streamx-2.0.3-rc.c718594-macos-x86_64.zip"
    sha256 "a4e27e9a986e8b8802c3e39475ccda21b0f346cea6d808c5cd95bc3c7d116e53"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.3-rc.c718594", output
  end
end
