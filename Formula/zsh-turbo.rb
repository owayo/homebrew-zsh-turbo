class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.100/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "851e2ea6c09beb05b3d7e87acb01482a80d1c771dbfed5971063fb860b3875c3"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.100/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "6cc9cb6a4a92882e824ba3a4b21f7ad7cbfed24c4dce051ad6ffe95bdd678758"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.100/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02f2e0bcb5985d53f51bcf225ec8e6d8fd51d754e851f1826d3098ea8fcd7788"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.10.100/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a434f4f18d98d34a1d498acc5bbcf75f1fa57108996dc3c3ff89fb030d28433"
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
