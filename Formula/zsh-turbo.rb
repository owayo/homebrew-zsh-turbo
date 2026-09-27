class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.100/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "8e0303595b137ed61352bbe530a121619e9439a90dcd385e167e39e1add0008d"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.100/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "6111c43d50fb8076c7fc7b100144d3a9e768cecfb8094894dcac2c87cae52918"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.100/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "941fb91d9998c697ebb98a43f8b5651616714f62b63d07b44012d63fff9f5573"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.100/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c55c023dc605c79b87ce0a3ab799a641a0a5c6945e96f998788d1fb9be9832a"
    end
  end

  def install
    bin.install "zsh-turbo"
    pkgshare.install "THIRD_PARTY_NOTICES.md", "licenses"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zsh-turbo --version")
  end
end
