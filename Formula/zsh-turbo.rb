class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.102/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "6a72301908c19b7572cb3aacac1913eb30eda8614b503d5fc553edccc351b351"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.102/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "b0bf69f59d390678c960099980bdca34c990a00b1ec535a134125eaea087ab0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.102/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35bbaf048dff49dfe90173f65b8ea69debdeb98ec7e97b0a33c4c7cccd314053"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.102/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f1c3a8192e8a244527dd277368e571d90cb63b32447af20b9dcc410e6b6eeae"
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
