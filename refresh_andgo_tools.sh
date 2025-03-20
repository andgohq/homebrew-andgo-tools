#!/bin/bash

# Refresh and go tools
brew uninstall diet-mov
brew untap andgohq/tools
brew tap andgohq/tools
brew install diet-mov
