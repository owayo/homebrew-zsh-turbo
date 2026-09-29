class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.106/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "d9ff59c698684bdb5ec531815b6962d8517458c715a7add980e173e73a72d66c"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.106/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "69c310414c06735e92cf1a4a45341a5e1e04070a3aa4d6bf437d07d91415b7d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.106/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bb906c723a4080f05847b100efcd34731d8719cfc0660ebf7886414195f69c9"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.106/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9db2d42c7f841e6595e5e7bdef420453715cc1396f8130eb31d1d6ad0ca7aff"
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
