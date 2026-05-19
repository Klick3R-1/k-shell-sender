#!/usr/bin/env bash
set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/Klick3R-1/k-shell-sender/main/k-shell-sender"

echo "Installing k-shell-sender..."

curl -fsSL "$SCRIPT_URL" -o "$INSTALL_DIR/k-shell-sender"
chmod +x "$INSTALL_DIR/k-shell-sender"

echo "Done. Run 'k-shell-sender register <name>' to set up this machine."
