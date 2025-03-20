class DietMov < Formula
  version "1.1.1"
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.1.tar.gz"
  # shasum -a 256 $FILE
  sha256 "11ea3752b204c15ae9e91c3d5e1f9f9a55a1eb2ab3da5535819dd5809278d42a"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/diet_mov.sh" => "diet-mov"
  end
end
