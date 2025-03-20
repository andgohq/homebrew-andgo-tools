# andgohq/tools

A collection of useful tools for macOS users, distributed via Homebrew.

## Installation

```bash
brew tap andgohq/homebrew-tools
```

## Available Tools

### diet-mov

A tool to convert MOV files to animated GIF format with customizable frame rate.

```bash
brew install diet-mov
```

#### Usage

```bash
diet-mov <directory> [fps]
diet-mov -v, --version    # Show version
```

**Arguments:**
- `directory`: Directory containing MOV files to convert
- `fps`: Frame rate for the output animated GIF (default: 2)
- `-v, --version`: Display version information

**Examples:**
```bash
diet-mov ./videos              # Convert with default 2 fps
diet-mov ./videos 5            # Convert with 5 fps
diet-mov /path/to/videos 10    # Convert with 10 fps
diet-mov -v                    # Show version
```

## Requirements

- macOS
- Homebrew
- ffmpeg (automatically installed as a dependency)

## Development

### Project Structure

```
.
├── Formula/           # Homebrew formula files
├── bin/              # Shell scripts
└── README.md         # This file
```

### Updating Formula

1. Update the version in `Formula/diet-mov.rb` and `bin/diet_mov.sh`:
   ```ruby
   version "1.1.0"  # Update this version number
   ```

   ```bash
   VERSION="1.1.0"
   ```

2. Create a new tag and push it:
   ```bash
   git add .
   git commit -m "Release v1.1.0"
   git tag -a v1.1.0 -m "Release v1.1.0"  # Use the same version number
   git push origin main
   git push origin v1.1.0
   ```

3. Create a new GitHub Release:
   - Go to GitHub repository
   - Click "Releases" → "Create a new release"
   - Choose the tag you just created (e.g., v1.1.0)
   - Add release notes
   - Click "Publish release"

4. Download the generated tar.gz and update the Formula:
   ```bash
   # Download the tar.gz file
   curl -L https://github.com/andgohq/homebrew-tools/archive/refs/tags/v1.1.0.tar.gz -o v1.1.0.tar.gz

   # Calculate SHA256
   shasum -a 256 v1.1.0.tar.gz

   # Update the Formula with new SHA256
   # Open Formula/diet-mov.rb and manually update these lines:
   # 2. Update the sha256 to the new hash value
   #
   # Example:
   # sha256 "9fc5963..."  # Change from old to new hash

   # Clean up
   rm v1.1.0.tar.gz
   ```

5. Commit and push the changes:
   ```bash
   git add Formula/diet-mov.rb
   git commit -m "Update diet-mov to v1.1.0"
   git push origin main
   ```

### Testing Changes

1. Install the formula locally:
   ```bash
   brew install --build-from-source Formula/diet-mov.rb
   ```

2. Test the changes:
   ```bash
   diet-mov ./test-videos
   ```

3. Uninstall after testing:
   ```bash
   brew uninstall diet-mov
   ```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.