#!/bin/bash
set -e

VERSION="1.0.0"

# Show version
if [ "$1" = "-v" ] || [ "$1" = "--version" ]; then
  echo "calc-sha256 version $VERSION"
  exit 0
fi

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <url>"
  echo "       $0 -v, --version    Show version"
  echo "Example: $0 https://example.com/file.tar.gz"
  exit 1
fi

url="$1"

# Create a temporary file
temp_file=$(mktemp)

echo "Downloading file from $url..."
if curl -L -o "$temp_file" "$url"; then
  echo "Calculating SHA256 hash..."
  sha256=$(shasum -a 256 "$temp_file" | cut -d' ' -f1)
  echo "SHA256: $sha256"
else
  echo "Error: Failed to download file"
  rm -f "$temp_file"
  exit 1
fi

# Clean up
rm -f "$temp_file"