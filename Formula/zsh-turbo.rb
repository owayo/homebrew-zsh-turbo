class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.105/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "0cf93d4b6d1ff2716f419a50391827cbd053e562527725973bee4ba550b7c707"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.105/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "dad5715b8b5ab537813c190c8cb5e967b5a0c3f3b10493975b44b0d376d93102"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.105/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a83626c01c4f1c6f33e068aa776f7ddbb74a0c1e98dbc5c3c8fada3b8587b806"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.105/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab9db520ff56f209e94693e4d4361435b1d35db70d63153859b86f2dea30f329"
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
