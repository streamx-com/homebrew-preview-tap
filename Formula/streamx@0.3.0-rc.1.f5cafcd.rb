# Generated with JReleaser 1.22.0 at 2026-03-10T05:55:15.096214432Z

class StreamxAT030Rc1F5cafcd < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.3.0-rc.1.f5cafcd"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.3.0-rc.1.f5cafcd/streamx-0.3.0-rc.1.f5cafcd-linux-aarch64.zip"
    sha256 "4e3e848466263f69d2b86beded82f0bea49d03cb5ea2ba3e0df91b5ef13937dd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.3.0-rc.1.f5cafcd/streamx-0.3.0-rc.1.f5cafcd-linux-x86_64.zip"
    sha256 "be52723bfc29815e1e2e30cb4405cff54676f082069963154b338dbde12a5f5a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.3.0-rc.1.f5cafcd/streamx-0.3.0-rc.1.f5cafcd-macos-aarch64.zip"
    sha256 "0731a196b3675d87e146aa375ccae4b1a2af5bbe098ca901bce3e31c70f82c86"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.3.0-rc.1.f5cafcd/streamx-0.3.0-rc.1.f5cafcd-macos-x86_64.zip"
    sha256 "e886102d7844c00216894427c4a65109fa3002c108d77c93993546e705e8c71b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.0-rc.1.f5cafcd", output
  end
end
