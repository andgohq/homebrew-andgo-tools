class DietMov < Formula
  version "1.1.3"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.3.tar.gz"
  # shasum -a 256 $FILE
  sha256 "557ef01e7967455bf3dd886fba91731abe4c2ced4f7fd53142482f9f8ed6847a"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
