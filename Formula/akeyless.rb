class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.47.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://akeyless-cli.s3.us-east-2.amazonaws.com/cli/1.47.0/production/cli-darwin-amd64"
    sha256 "d3c1c9951283d23496d92cccf8eb0cdef6ff9fa4a1827b65b5d9a1d178a0a569"
    def install
      bin.install "cli-darwin-amd64" => "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://akeyless-cli.s3.us-east-2.amazonaws.com/cli/1.47.0/production/cli-darwin-arm64"
    sha256 "172fe3c2f03f4c3808becc9f1c0587d8ce47e09a59d070021ca4ce3fb6a8fa06"
    def install
      bin.install "cli-darwin-arm64" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

