#!/bin/bash
# tmux-config installer

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing tmux config..."

# Backup existing config
if [ -f ~/.tmux.conf ]; then
    echo "Backing up existing ~/.tmux.conf to ~/.tmux.conf.bak"
    cp ~/.tmux.conf ~/.tmux.conf.bak
fi

# Create directories
mkdir -p ~/.tmux/scripts
mkdir -p ~/.tmux/plugins

# Copy config
cp "$SCRIPT_DIR/tmux.conf" ~/.tmux.conf

# Copy scripts
cp "$SCRIPT_DIR/scripts/"*.sh ~/.tmux/scripts/
chmod +x ~/.tmux/scripts/*.sh

# Install TPM if not present
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "Installing TPM (Tmux Plugin Manager)..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo ""
echo "Installation complete!"
echo ""
echo "Next steps:"
echo "  1. Start tmux: tmux"
echo "  2. Install plugins: Press prefix + I (capital i)"
echo ""
