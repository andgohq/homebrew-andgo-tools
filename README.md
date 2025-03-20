# andgohq/tools

A collection of useful tools for macOS users, distributed via Homebrew.

## Installation

```bash
brew tap andgohq/homebrew-tools
```

## Available Tools

### diet-mov

A tool to convert MOV files to animated PNG format with customizable frame rate.

```bash
brew install diet-mov
```

#### Usage

```bash
diet-mov <directory> [fps]
```

**Arguments:**
- `directory`: Directory containing MOV files to convert
- `fps`: Frame rate for the output animated PNG (default: 2)

**Examples:**
```bash
diet-mov .
diet-mov ./videos 2
diet-mov ./videos 5
diet-mov /path/to/videos 10
```

## Requirements

- macOS
- Homebrew
- ffmpeg (automatically installed as a dependency)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.