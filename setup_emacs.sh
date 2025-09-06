#!/bin/bash

# This script automates the setup of your Emacs configuration.

# ---- USER CONFIGURATION ----
# REPLACE with the URL of your Emacs configuration repository
https://github.com/oways-work/my_emacs_config="<https://github.com/oways-work/my_emacs_config>"

# REPLACE with the name of your repository directory
my_emacs_config="<my_emacs_config>"
# ----------------------------

# Step 1: Remove any existing Emacs config to avoid conflicts.
echo "Removing any existing Emacs configuration..."
rm -rf ~/.emacs.d

# Step 2: Clone your Emacs configuration repository.
echo "Cloning your Emacs configuration from Git..."
git clone "$https://github.com/oways-work/my_emacs_config"

# Step 3: Create the symbolic link. The cloned repository IS the ~/.emacs.d directory.
echo "Creating symbolic link to connect your config..."
ln -s "$HOME/$my_emacs_config" ~/.emacs.d

# Step 4: Ensure the linked directory is writable.
echo "Ensuring the Emacs configuration directory is writable..."
chmod -R 755 ~/.emacs.d

echo "Emacs configuration setup complete. You can now start Emacs."
