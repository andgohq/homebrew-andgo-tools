#!/bin/bash
set -e

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <directory> [fps]"
  echo ""
  echo "Arguments:"
  echo "  directory    Directory containing MOV files to convert"
  echo "  fps         Frame rate for the output animated PNG (default: 2)"
  echo ""
  echo "Examples:"
  echo "  $0 ./videos              # Convert with default 2 fps"
  echo "  $0 ./videos 5            # Convert with 5 fps"
  echo "  $0 /path/to/videos 10    # Convert with 10 fps"
  exit 1
fi

directory="$1"
fps="${2:-2}"  # Use second argument if provided, otherwise default to 2

mov_files=$(find "$directory" -type f -name "*.mov")

if [ -z "$mov_files" ]; then
  echo "No MOV files found."
  exit 1
fi

for mov_file in $mov_files; do
  output_file="${mov_file%.mov}.png"
  # Convert to animated PNG with specified frame rate
  ffmpeg -i "$mov_file" -vf "fps=$fps" -f apng "$output_file"
  echo "Conversion completed: $mov_file → $output_file (fps: $fps)"
done

echo "All MOV files have been converted to animated PNG successfully with $fps fps."
