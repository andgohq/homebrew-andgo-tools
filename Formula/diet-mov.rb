class DietMov < Formula
  version "1.1.4"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.4.tar.gz"
  # shasum -a 256 $FILE
  sha256 "f83b8031e0ae462daba99b47c1b6b1a8ecdf3a7ecc5ed105cfa732393bbdb6c2"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
