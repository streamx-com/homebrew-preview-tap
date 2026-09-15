# Generated with JReleaser 1.22.0 at 2026-09-15T12:02:13.204074034Z

class StreamxAT210RcDcd3f6e < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.0-rc.dcd3f6e"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.dcd3f6e/streamx-2.1.0-rc.dcd3f6e-linux-aarch64.zip"
    sha256 "b5c7c9e49f023890b7de7a7f6e7d66ed7e4ec1821569e3c689d2e8255c9c79f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.dcd3f6e/streamx-2.1.0-rc.dcd3f6e-linux-x86_64.zip"
    sha256 "d353fb122a027ff73f55f5c4dacdbc3cecca8c82f77f54ff6ff002fa66eba892"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/2.1.0-rc.dcd3f6e/streamx-2.1.0-rc.dcd3f6e-macos-aarch64.zip"
    sha256 "915ce49a8c5b5ad6b504d28f731f8c4c745cb30cc007f07f1daca41ca1ad27cc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.1.0-rc.dcd3f6e", output
  end
end
