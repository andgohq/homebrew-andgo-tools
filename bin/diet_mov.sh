#!/bin/bash
set -e

VERSION="1.1.9"
FORCE=0
ERROR_COUNT=0

# Show version
if [ "$1" = "-v" ] || [ "$1" = "--version" ]; then
  echo "diet-mov version $VERSION"
  exit 0
fi

# Parse options
while getopts "f" opt; do
  case $opt in
    f) FORCE=1 ;;
    \?) echo "Invalid option: -$OPTARG" >&2; exit 1 ;;
  esac
done

# Shift the options out of the arguments
shift $((OPTIND-1))

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <directory> [fps]"
  echo "       $0 -v, --version    Show version"
  echo "       $0 -f               Force overwrite existing files"
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

# Store target files in an array
mov_files=()
while IFS= read -r -d '' file; do
  mov_files+=("$file")
done < <(find "$directory" -type f -name "*.mov" -print0)

# Count and display target files
echo "Found MOV files:"
for mov_file in "${mov_files[@]}"; do
  echo "  - $mov_file"
done
echo

# Process each MOV file, handling spaces in filenames correctly
ERROR_COUNT=0
for mov_file in "${mov_files[@]}"; do
  output_file="${mov_file%.mov}.gif"

  # Check if output file exists and handle accordingly
  if [ -f "$output_file" ] && [ $FORCE -eq 0 ]; then
    echo "Warning: $output_file already exists. Use -f to overwrite."
    continue
  fi

  echo "Processing: $mov_file"
  # Convert to animated GIF with specified frame rate
  if ffmpeg -y -loglevel error -i "$mov_file" -vf "fps=$fps" -f gif "$output_file"; then
    echo "Conversion completed: $mov_file → $output_file (fps: $fps)"
  else
    echo "Error: Failed to convert $mov_file"
    ERROR_COUNT=$((ERROR_COUNT + 1))
  fi
done

if [ $ERROR_COUNT -eq 0 ]; then
  echo "All MOV files have been converted to animated GIF successfully with $fps fps."
else
  echo "Conversion completed with $ERROR_COUNT error(s)."
  exit 1
fi
