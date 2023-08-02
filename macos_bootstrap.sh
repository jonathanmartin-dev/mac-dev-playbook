#!/usr/bin/env bash

# Setup temporary directory
TMP_DIR="$HOME/tmp"
mkdir -p $TMP_DIR

# Setup passwordless sudo
echo "Setup passwordless sudo"
echo "`whoami` ALL = (ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/`whoami`

# Install XCode Command Line Tools
xcode_installed=`pkgutil --pkg-info=com.apple.pkg.CLTools_Executables | grep version`
if [ ! -n $xcode_installed ]; then
  sudo xcode-select --install
fi
