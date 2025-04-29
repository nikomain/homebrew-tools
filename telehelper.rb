class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.0.tar.gz"
  sha256 "18c9ea2759007bab44b32d217c479f82af8b67fa4de5c5c323bc74fd192d2f6e"
  license ""

  def install
    # Install scripts
    (share/"telehelper").install "telehelper/telehelper.sh"
    (share/"telehelper").install "telehelper/install.sh"
  end

  def post_install
    # Run your install.sh script automatically after brew install finishes
    system "#{HOMEBREW_PREFIX}/share/telehelper/install.sh"
  end

  def caveats
    <<~EOS
      Telehelper has been installed.

      Teleport (tsh) should be installed automatically if missing.

      The telehelper functions have been added to your shell configuration (~/.zshrc, ~/.bashrc).

      If something went wrong, you can re-run:

        #{HOMEBREW_PREFIX}/share/telehelper/install.sh
    EOS
  end
end
