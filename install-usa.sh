#!/bin/bash

# Stop on error
set -e

echo "[*] Installing mpv..."
sudo apt update
sudo apt install -y mpv

echo "[*] Creating folder /usr/local/share/usa..."
sudo mkdir -p /usr/local/share/usa

echo "[*] Copying audio and flag files..."
sudo cp anthem.mp3 flag.txt /usr/local/share/usa

echo "[*] Installing script to /usr/local/bin/usa..."
sudo cp usa /usr/local/bin/usa
sudo chmod +x /usr/local/bin/usa

echo "[✔] Installed! Try typing usa into the terminal!"

