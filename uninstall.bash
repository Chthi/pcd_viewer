#!/bin/bash

# This script uninstalls the PCD Viewer application and removes the desktop entry.

# Remove the executable script
rm -f ~/.local/bin/pcd_view
# Remove the environment variable script
rm -f ~/.local/bin/pcd_viewer_env.sh

# Remove the desktop entry
rm -f ~/.local/share/applications/pcd_viewer.desktop

# Update the desktop menu entries
xdg-desktop-menu forceupdate

# Update the desktop database
update-desktop-database ~/.local/share/applications

# Remove the virtual environment if it exists
if [ -d ".venv" ]; then
    rm -rf .venv
fi

# Notify the user
echo "PCD Viewer uninstalled successfully."
