class ConvertMovToPng < Formula
  desc "指定場所にある .mov ファイルを .png に変換します"
  homepage "https://github.com/andgohq/homebrew-andgo-tools"
  url "https://github.com/andgohq/homebrew-andgo-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "<ここにSHA256値を入れる>"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/convert_mov_to_png.sh" => "convert-mov-to-png"
  end
end
