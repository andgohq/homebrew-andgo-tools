#!/bin/bash
set -e

if [ "$#" -lt 1 ]; then
  echo "使い方: $0 <ディレクトリ>"
  echo "例: $0 /path/to/videos"
  exit 1
fi

mov_files=$(find "$1" -type f -name "*.mov")

if [ -z "$mov_files" ]; then
  echo "MOVファイルが見つかりませんでした。"
  exit 1
fi

for mov_file in $mov_files; do
  output_file="${mov_file%.mov}.png"
  ffmpeg -i "$mov_file" "$output_file"
  echo "変換完了: $mov_file → $output_file"
done

echo "すべてのMOVファイルの変換が完了しました。"
