#!/bin/bash
set -e

VERSION="1.1.2"

# Show version
if [ "$1" = "-v" ] || [ "$1" = "--version" ]; then
  echo "diet-mov version $VERSION"
  exit 0
fi

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <directory> [fps]"
  echo "       $0 -v, --version    Show version"
  echo "Example: $0 /path/to/videos 2"
  echo "Default fps: 2"
  exit 1
fi

directory="$1"
fps="${2:-2}"  # Use second argument if provided, otherwise default to 2

# Check if any MOV files exist
if ! find "$directory" -type f -name "*.mov" -print -quit | grep -q .; then
  echo "No MOV files found."
  exit 1
fi

# Process each MOV file, handling spaces in filenames correctly
find "$directory" -type f -name "*.mov" -print0 | while IFS= read -r -d '' mov_file; do
  output_file="${mov_file%.mov}.gif"
  # Convert to animated GIF with specified frame rate
  ffmpeg -loglevel error -i "$mov_file" -vf "fps=$fps" -f gif "$output_file"
  echo "Conversion completed: $mov_file → $output_file (fps: $fps)"
done

echo "All MOV files have been converted to animated GIF successfully with $fps fps."
