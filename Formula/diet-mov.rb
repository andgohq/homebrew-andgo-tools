class DietMov < Formula
  version "1.1.5"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.5.tar.gz"
  # shasum -a 256 $FILE
  sha256 "6fd7fc7f805d085d143739a0bb2500e92cb3f475acf2d765d692c69c810d71ce"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
