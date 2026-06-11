cask "chroncal" do
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_amd64.tar.gz"
      sha256 "22bfc4d6a0d7a4376b60da8bd951e9671b396b036c1081499ad88d9d74b90305"
    end
    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_darwin_arm64.tar.gz"
      sha256 "d75c2c56623fada23d24b87d94bfb4d8e4d5df80f1e8720bb2f3af8e0dc41d98"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_amd64.tar.gz"
      sha256 "f8fb099fd5a0d260c1c57e2ced1cb24181a04e816d57aaa9b5c6851a523cfc79"
    end
    on_arm do
      url "https://github.com/DouglasdeMoura/chroncal/releases/download/v#{version}/chroncal_#{version}_linux_arm64.tar.gz"
      sha256 "734d1e9d20ec377b850f45585aab829b5982be7e793321c7c0515957d1871155"
    end
  end

  binary "chroncal"

  name "chroncal"
  desc "Terminal-first calendar, todo, and journal manager"
  homepage "https://github.com/DouglasdeMoura/chroncal"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/chroncal"]
    end
  end
end
