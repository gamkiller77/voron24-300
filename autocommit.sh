#!/bin/bash

# 1. Navigate to the config folder
CONFIG_DIR="/home/andy/printer_data/config"
cd $CONFIG_DIR || exit 1

# 2. Add all changes
git add .

# 3. Commit with a timestamp
current_date=$(date +"%Y-%m-%d %H:%M:%S")
git commit -m "Auto-backup: $current_date"

# 4. Pull first to avoid conflicts (rebase strategy)
git pull --rebase origin main

# 5. Push to GitHub
git push origin main
