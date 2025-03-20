class DietMov < Formula
  version "1.1.6"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.6.tar.gz"
  # shasum -a 256 $FILE
  sha256 "4121fb9aebff586ddc6756d37f6c47f13b5161ce0ca53d933acfe3f0816ee607"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
