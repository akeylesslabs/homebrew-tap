class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.67.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless"
    sha256 "e0f63ca397609a55603057005bd873f567417a85647727462618dec6ba17cdfa"
    def install
      bin.install "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless-arm"
    sha256 "ddb6420badf936f68db13afab4381f39825bb929405fb0d295e0a945eaf25447"
    def install
      bin.install "akeyless-arm" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

