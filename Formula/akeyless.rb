class Akeyless < Formula
  desc "Akeyless CLI"
  homepage "https://www.akeyless.io"
  version "1.154.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless"
    sha256 "6ce516932d93422650068dbb595e493dcdcd0f04f1a4085feee4a92ae15fd293"
    def install
      bin.install "akeyless"
    end
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.akeyless.io/Akeyless_Artifacts/MacOS/CLI/akeyless-arm"
    sha256 "1be195e0bd52c3695fae6f9de0fe435b389f52d2060378698f5c1921c7c05153"
    def install
      bin.install "akeyless-arm" => "akeyless"
    end
  end

  conflicts_with "akeyless"

  test do
    system "#{bin}/akeyless --version"
  end
end

