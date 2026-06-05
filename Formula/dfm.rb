class Dfm < Formula
  desc "Standalone single-binary dotfiles manager"
  homepage "https://github.com/bitcldr/dfm"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitcldr/dfm/releases/download/v1.0.0/dfm_v1.0.0_macos_arm64.tar.gz"
      sha256 "58106d62d592362e2cee63845eb7653609333c7cfae5d778c84a811ecf602448"
    end
    on_intel do
      url "https://github.com/bitcldr/dfm/releases/download/v1.0.0/dfm_v1.0.0_macos_x86_64.tar.gz"
      sha256 "1244293f845fefa6deb4e4e252fefdcdd80b9b0e1c4ec65ac4ee185abbab58d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitcldr/dfm/releases/download/v1.0.0/dfm_v1.0.0_linux_arm64.tar.gz"
      sha256 "e07e3e9ac9bed3e84b34c447e1eec761635463c2fd0bd39f90e40e9635b9e0cc"
    end
    on_intel do
      url "https://github.com/bitcldr/dfm/releases/download/v1.0.0/dfm_v1.0.0_linux_x86_64.tar.gz"
      sha256 "d0b03b6907d8f5aecc5f28997fb880f027a413f68309002d74804690112a5241"
    end
  end

  def install
    bin.install "dfm"
  end

  test do
    system "#{bin}/dfm", "--help"
  end
end
