# Generated with JReleaser 1.22.0 at 2026-03-11T07:56:10.688231606Z

class StreamxAT058Rc1E1fd90b < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.8-rc.1.e1fd90b"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.8-rc.1.e1fd90b/streamx-0.5.8-rc.1.e1fd90b-linux-aarch64.zip"
    sha256 "308f02e891c75c09d2e32e00c604b0a57e77ce0b3f60b57f98c0e1a3a08c8347"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.8-rc.1.e1fd90b/streamx-0.5.8-rc.1.e1fd90b-linux-x86_64.zip"
    sha256 "b76658346122fc78bad8fd3fcf39cc07c7685a131bd052ff84b65e372b5094f5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.8-rc.1.e1fd90b/streamx-0.5.8-rc.1.e1fd90b-macos-aarch64.zip"
    sha256 "7b22131df4b1bfcd9a0d7852b1ffa3b2e6c152c6e637648e701035c22b766d97"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli-preview/releases/download/0.5.8-rc.1.e1fd90b/streamx-0.5.8-rc.1.e1fd90b-macos-x86_64.zip"
    sha256 "129db3606f6dcb81c79227b4499cd13e12cae79937a5bcdebc1f464080512266"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.8-rc.1.e1fd90b", output
  end
end
