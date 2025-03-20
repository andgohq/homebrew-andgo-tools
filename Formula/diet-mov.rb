class DietMov < Formula
  version "1.1.7"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.7.tar.gz"
  # shasum -a 256 $FILE
  sha256 "3f045b94ab8349e60b057d64651b9f0ba11efe43678884981e9b8d5cccdd607b"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
