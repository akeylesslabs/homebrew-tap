class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.60.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless"
    sha256 "6265a361e72f22830106da6d64ea9ab63ba4d7c47094add3491c8795110d50b7"
    def install
      bin.install "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless-arm"
    sha256 "d8ac7a5051f4ca471811f9d147a0d332516795e9e150ec46cd74932e5ab2fda2"
    def install
      bin.install "akeyless-arm" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

