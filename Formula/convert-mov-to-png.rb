class ConvertMovToPng < Formula
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/1.0.1.tar.gz"
  # shasum -a 256 $FILE
  sha256 "ef93face8278cc83a998de482410c49191c7a3ea5c9c9e9d06b7bb180e487196"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/convert_mov_to_png.sh" => "convert-mov-to-png"
  end
end
