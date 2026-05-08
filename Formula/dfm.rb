class Dfm < Formula
  desc "Standalone single-binary dotfiles manager"
  homepage "https://github.com/bitcldr/dfm"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/bitcldr/dfm/releases/download/v#{version}/dfm_v#{version}_macos_arm64.tar.gz"
      sha256 "<sha256 of macos_arm64 archive>"
    end
    on_intel do
      url "https://github.com/bitcldr/dfm/releases/download/v#{version}/dfm_v#{version}_macos_x86_64.tar.gz"
      sha256 "<sha256 of macos_x86_64 archive>"
    end
  end

  def install
    bin.install "dfm"
  end

  test do
    system "#{bin}/dfm", "--help"
  end
end
