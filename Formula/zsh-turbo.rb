class ZshTurbo < Formula
  desc "Zsh prompts, autosuggestions, syntax highlighting, and completions"
  homepage "https://github.com/owayo/zsh-turbo"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.101/zsh-turbo-aarch64-apple-darwin.tar.gz"
      sha256 "29a72662f04d6512d054d2918372be274a8025343f20cb3226c6afe05383d491"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.101/zsh-turbo-x86_64-apple-darwin.tar.gz"
      sha256 "a1d824341db592548e78403c5596ac9cc51d65af756e9aa4413d1376e8702470"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.101/zsh-turbo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46d206cb6a23a0ad2044b744978bd239568ccf6c61f5f5f82508039a674ae337"
    else
      url "https://github.com/owayo/zsh-turbo/releases/download/v26.9.101/zsh-turbo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b424d3734d95e94ff57dd065cb35ccfe954c2e0ee8ec9306b5d47dcbbf46419a"
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
