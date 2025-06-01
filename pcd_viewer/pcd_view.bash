#!/bin/bash

# If the script is run without arguments, display usage information
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <pcd_file>"
    echo "Example: $0 my_point_cloud.pcd"
    exit 1
fi

source ~/.local/bin/pcd_viewer_env.sh

source "$INSTALL_DIR/.venv/bin/activate"
python3 "$INSTALL_DIR/pcd_viewer/pcd_view.py" "$@"
