class Chroncal < Formula
  desc "Terminal-first calendar, todo, and journal manager"
  homepage "https://github.com/DouglasdeMoura/chroncal"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_amd64.tar.gz"
      sha256 "370c3f38542dbef47733b4d2532bed26ee848d39f8713e02dac75b3f12fe18b1"
    end

    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_arm64.tar.gz"
      sha256 "5472453a5520fe055216383c1e93be2c47b894164c0d102e9c2f1eb945e7079d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_amd64.tar.gz"
      sha256 "93e446a05fce70ced1a9ff72536fc9534300574847f1a4ec91d2498c0142c72e"
    end

    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_arm64.tar.gz"
      sha256 "c701af33ba1017e2a5b24ecc8c300e715c6b9659d2c8a4f8998f46d0350f5c33"
    end
  end

  def install
    bin.install "chroncal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chroncal --version")
  end
end
