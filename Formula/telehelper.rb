class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.12.tar.gz"
  sha256 "90f591a5e50d180d0542d1b75fe32d5d1e622f85f9172e346046be51d3d08b52"
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
