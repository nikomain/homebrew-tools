class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.11.tar.gz"
  sha256 "5f20807aefdf738827de7c68d3f644e9f0d83435258462bedf607224c9c53b1b"
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
