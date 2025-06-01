#!/bin/bash

# This script installs the PCD Viewer application and set it as the default viewer for PCD files.
# - Sets up a local virtual environment
# - Creates a desktop entry for easy access.


# Create a virtual environment
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Install the package
pip install .

# Add pcd_view as an executable script
INSTALL_DIR="$(dirname "$(readlink -f "$0")")"
ln -sf "$INSTALL_DIR/pcd_viewer/pcd_view.bash" ~/.local/bin/pcd_view

# Save the installation directory to an environment variable
echo "export INSTALL_DIR=\"$INSTALL_DIR\"" > ~/.local/bin/pcd_viewer_env.sh

# Setup the desktop entry
cat > ~/.local/share/applications/pcd_viewer.desktop <<EOL
[Desktop Entry]
Type=Application
Name=PCD Viewer
Comment=Viewer for point clouds
Exec="$INSTALL_DIR/pcd_viewer/pcd_view.bash" %f
Terminal=false
Categories=Graphics;
MimeType=application/x-pcd;
EOL

# Ensure the script is executable
chmod +x ~/.local/share/applications/pcd_viewer.desktop

# Update the desktop database
update-desktop-database ~/.local/share/applications
# Associate the PCD file type with the viewer
xdg-mime default pcd_viewer.desktop application/x-pcd

# Update desktop menu entries
xdg-desktop-menu forceupdate

# Notify the user
echo "PCD Viewer installed successfully. You can now open PCD files with it."
