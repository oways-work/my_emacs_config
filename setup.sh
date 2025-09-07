#!/bin/bash

# --- Emacs Configuration Setup Script for Temporary Sandboxes ---

# This script automates the setup of your Emacs configuration by
# cloning your Git repository directly to the expected location.

# User-specific configuration (replace with your repo URL)
# Example: https://github.com/oways-work/my_emacs_config
EMACS_CONFIG_REPO="https://github.com/oways-work/my_emacs_config"

# --- Script Logic ---

echo "Starting Emacs configuration setup..."

# 1. Clean up any existing symbolic link or directory at ~/.emacs.d
# This is crucial for a clean start in every new sandbox.
echo "Cleaning up old Emacs configuration directory..."
rm -rf ~/.emacs.d

# 2. Clone the repository directly to ~/.emacs.d
# This single step combines cloning and linking.
echo "Cloning Emacs configuration from Git..."
git clone "$EMACS_CONFIG_REPO" ~/.emacs.d

# 3. Check if the clone was successful.
if [ $? -eq 0 ]; then
    echo "Cloning successful."
    echo "Emacs configuration is ready. You can now start Emacs."
else
    echo "Error: Failed to clone the repository."
    echo "Please check the repository URL and try again."
fi
