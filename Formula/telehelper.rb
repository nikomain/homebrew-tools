class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.8.tar.gz"
  sha256 "5faecaa8c49e0693756793531a0b363e628a1828981c94d60a3b216cde1e2236"
  license ""

  def install
    Dir.chdir("brew-scripts/telehelper") do
      bin.install "installer.sh" => "telehelper-install"
      pkgshare.install "telehelper-functions.sh"
    end
  end

  def caveats
    <<~EOS
      To complete installation, run:

        telehelper-install

      This will:
        - Install Teleport (if missing)
        - Configure your shell (e.g., .bashrc or .zshrc)

      The helper functions are located at:
        #{opt_pkgshare}/functions.sh
    EOS
  end
end
