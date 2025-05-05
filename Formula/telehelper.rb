class Telehelper < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/telehelper-v1.0.17.tar.gz"
  sha256 "b81ac3f4dd7e1d672cf197732b6fcf696caf68a8cbcf35ef21b0b2ac290f6dc1"
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
