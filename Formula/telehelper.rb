class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.16.tar.gz"
  sha256 "525a4a3a14ce97e9097b1fd27551acc61aee6c0aa5de496788e920f2d636a93d"
  license ""

  def install
    Dir.chdir("brew-scripts/telehelper") do
      bin.install "installer.sh" => "th-install"
      pkgshare.install "telehelper-functions.sh"
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
