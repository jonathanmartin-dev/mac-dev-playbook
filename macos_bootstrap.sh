#!/usr/bin/env bash

PYTHON_PACKAGE="python-3.9.1-macos11.0.pkg"
TMP_DIR="$HOME/tmp"

echo "Setup passwordless sudo"
echo "`whoami` ALL = (ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/`whoami`


xcode_installed=`pkgutil --pkg-info=com.apple.pkg.CLTools_Executables | grep version`
if [ ! -n $xcode_installed ]; then
  sudo xcode-select --install
fi

