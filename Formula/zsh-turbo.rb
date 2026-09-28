class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.103/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "9d0f0cca284dcb9d1cc31fb3bbec3b15eb5c58a78714e12f23ef54fb274b1894"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.103/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "b0fde7db92ef02a06a30d563a6f11723bd5a12b8658e3ebe3581455ff3c98b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.103/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c701176f6a98d1c14925421152f2f3ea41074af3e143a9e71fe9ba83d35bd23"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.103/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b57ceeab106d58c08f448b7a415c89ec2fdf6a932a79b04bc1897a0bd7eb4e87"
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
