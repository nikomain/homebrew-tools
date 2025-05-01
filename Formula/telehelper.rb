class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.14.tar.gz"
  sha256 "0a9dccf063b806d843fd6caba7a5ebb9545344ba8afe0d4952f98cbcbe63abef"
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
