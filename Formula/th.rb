class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/th-v1.1.0.tar.gz"
  sha256 "ae58e4a368ffbdd9683e1eb6ea174163a883ce3d66cba70dad9e2e75ef1a6802"
  license ""

  def install
    Dir.chdir("brew-scripts/th") do
      bin.install "installer.sh" => "th-install"
      pkgshare.install "th-functions.sh"
    end
  end

  def caveats
    <<~EOS
      To complete installation, run:

        th-install

      This will:
        - Install Teleport (if missing)
        - Configure your shell (e.g., .bashrc or .zshrc)

    EOS
  end
end
