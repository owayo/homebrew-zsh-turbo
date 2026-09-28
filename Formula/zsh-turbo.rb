class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.104/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "c9c0a56712c39a6936c20912b5d13be7d735f567ea280f48da60366e6d0361ef"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.104/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "8d30d319eee72de32a81c252833909b60b34b091c414d0486f8508a4ed54ec64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.104/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8bddc1df0f30b076a1cbea3ceaa7692defbab7d741dd151b27f59610b2786bba"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.104/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "afee9d9076fffb966ba1592c4b08d6cc2d2892123761b2a2765d966ebb31b0a5"
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
