class DietMov < Formula
  version "1.1.2"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.2.tar.gz"
  # shasum -a 256 $FILE
  sha256 "b7139364346d086f4e520627884282a78f55dead31a5dbfaaca92f45586f8eee"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
