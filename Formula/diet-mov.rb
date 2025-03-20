class DietMov < Formula
  version "1.1.9"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.9.tar.gz"
  # shasum -a 256 $FILE
  sha256 "e243ded3ccbe23cb75a24b753b58b06831e1ca5fa7f31877c2b4eefbffa98b83"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
