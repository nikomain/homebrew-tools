class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/th-v1.0.19.tar.gz"
  sha256 "03bc82bda999361ac2a18a4ca97b5b5dd5d4928713621d4edb1f62a081f924c7"
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
