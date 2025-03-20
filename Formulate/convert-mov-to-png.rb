class ConvertMovToPng < Formula
  desc "Tools for small things"
  homepage ""
  url "https://github.com/andgohq/homebrew-tools/archive/refs/tags/1.0.0.tar.gz"
  sha256 "27f29787219fe78cf03eec959e64626166adb56c6699a945cbe0e076269a7ddd"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/convert_mov_to_png.sh" => "convert-mov-to-png"
  end
end
