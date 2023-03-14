class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.69.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless"
    sha256 "7bf797addecf20a04da30e6ea6587fc40d9f828d18406a239681a637df3d2d2f"
    def install
      bin.install "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless-arm"
    sha256 "24c47da842739e90c63247abcbefdd2cf0b2af2454432e002079e307b9b6991d"
    def install
      bin.install "akeyless-arm" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

