class Chroncal < Formula
  desc "Terminal-first calendar, todo, and journal manager"
  homepage "https://github.com/DouglasdeMoura/chroncal"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_amd64.tar.gz"
      sha256 "e81d3392b7749ec50be06cbf88a14b43e6f59b4f48010cffac43ae013111a420"
    end

    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_arm64.tar.gz"
      sha256 "6928ebfc71d724bd39918abaf91552f306632f955eaf7f0298d9429a4cd8d040"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_amd64.tar.gz"
      sha256 "7ed61cde3c7c7c07f45f7dd4c3e7b75fbd38b2877d926dd538ff758ea2f86154"
    end

    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_arm64.tar.gz"
      sha256 "f1d1a00a05ff49e63da80a28d0458094f24412cd1b8679d31926b8256f5d2cf5"
    end
  end

  def install
    bin.install "chroncal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chroncal --version")
  end
end
