#!/bin/bash
set -e

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <directory> [fps]"
  echo "Example: $0 /path/to/videos 2"
  echo "Default fps: 2"
  exit 1
fi

directory="$1"
fps="${2:-2}"  # Use second argument if provided, otherwise default to 2

mov_files=$(find "$directory" -type f -name "*.mov")

if [ -z "$mov_files" ]; then
  echo "No mov files found."
  exit 1
fi

for mov_file in $mov_files; do
  output_file="${mov_file%.mov}.gif"
  # Convert to animated PNG with specified frame rate
  ffmpeg -i "$mov_file" -vf "fps=$fps" -f gif "$output_file"
  echo "Conversion completed: $mov_file → $output_file (fps: $fps)"
done

echo "All mov files have been converted to animated GIF successfully with $fps fps."
