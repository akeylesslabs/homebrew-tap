class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.129.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless"
    sha256 "42960857cd147554dbe9eebd4e74a148bab88bce48d426d21f6cbd5f9e901cb1"
    def install
      bin.install "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless-arm"
    sha256 "cfd966379d3849a4de7e7d05ae2aaed282888d5d96bbd3a9e1f88b61df4e45a1"
    def install
      bin.install "akeyless-arm" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

