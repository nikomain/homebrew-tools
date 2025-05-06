class Th < Formula
  desc ""
  homepage "https://github.com/nikomain/brew-scripts"
  url "https://github.com/nikomain/brew-scripts/archive/refs/tags/th-v1.0.18.tar.gz"
  sha256 "f5acca48135559c83ec0df9379ba874a8ec71bdbaacc20537a8e94ae45685386"
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
