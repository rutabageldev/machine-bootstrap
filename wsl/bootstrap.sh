#!/bin/bash

set -e  # Exit on any error

# === Load Config ===
CONFIG_FILE="$(dirname "$0")/config.env"
if [[ -f "$CONFIG_FILE" ]]; then
  source "$CONFIG_FILE"
else
  echo "[!] config.env not found at $CONFIG_FILE"
  exit 1
fi

echo "[+] Starting WSL CLI bootstrap..."

# === 1. Verify Ubuntu Version ===
CURRENT_VERSION=$(lsb_release -rs)
if [[ "$CURRENT_VERSION" != "$EXPECTED_UBUNTU_VERSION" ]]; then
  echo "[-] Ubuntu $EXPECTED_UBUNTU_VERSION required. Found: $CURRENT_VERSION"
  exit 1
fi
echo "[✓] Ubuntu version verified ($CURRENT_VERSION)"

# === 2. Install Core Dependencies ===
echo "[+] Installing core packages..."
sudo apt update
sudo apt install -y git curl

# === 3. Optionally Install Zsh ===
if [[ "$INSTALL_ZSH" == "true" ]]; then
  echo "[+] Installing Zsh..."
  sudo apt install -y zsh

  if [ "$SHELL" != "$(which zsh)" ]; then
    echo "[+] Setting Zsh as default shell..."
    chsh -s "$(which zsh)"
  fi
else
  echo "[!] Skipping Zsh install as per config"
fi

# === 4. Run dev-setup Bootstrap Script ===
if [[ -f "$DEV_SETUP_BOOTSTRAP_PATH" ]]; then
  echo "[+] Running dev-setup bootstrap script..."
  bash "$DEV_SETUP_BOOTSTRAP_PATH"
else
  echo "[!] dev-setup bootstrap script not found at $DEV_SETUP_BOOTSTRAP_PATH"
  echo "[-] Please ensure dev-setup is cloned to $PROJECTS_DIR"
  exit 1
fi

echo "[✓] WSL CLI bootstrap complete."