class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/th-v1.1.1.tar.gz"
  sha256 "9cfe34c60d4ad7159ff375ca89bab6a80a6b45392fcc31d86f211aed0297008f"
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
