class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.101/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "0d0dd983388542a47515d7763cff571c8c8bc30584a14a6ea0ca05b200eadd09"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.101/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "3da71c6af0369e6f2f3179f0493e7914809bc7a4aa18e3b29fa5d132faac1248"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.101/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d9d973a1c3942b76a3b7d882325ce57fc7bdfa8bf19030f9e97841dc8628b1f"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.101/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd7516a121044434df3c8a5bf46b66fb4a9ad1dd87ac4a601e5403b28a3db86f"
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
