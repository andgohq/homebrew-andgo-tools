class DietMov < Formula
  version "1.1.9"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.8.tar.gz"
  # shasum -a 256 $FILE
  sha256 "bdc3b3f30711c74c60c86f4c181581d56264a39434a7bf03daed48456ca22859"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
