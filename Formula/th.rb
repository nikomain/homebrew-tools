class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/th-v1.1.2.tar.gz"
  sha256 "51e1766e49350721bab16197c4617ef6cd6659b0814bece69b9a4cab6e4d96ff"
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
