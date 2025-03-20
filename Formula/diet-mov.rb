class DietMov < Formula
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/1.1.0.tar.gz"
  # shasum -a 256 $FILE
  sha256 "9fc5963be9a15334d2fb4fd2d109cdae171080b06f856a6d782ee71aa499a28e"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
