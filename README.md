# Point Cloud Data (PCD) file format

Format definied in the [Point Cloud Library](https://pcl.readthedocs.io/projects/tutorials/en/latest/pcd_file_format.html).

`.pcd` files are used for example in the Carla simulator for point cloud HD maps.

## Quick visualisation of `.pcd` files

### Online
Up to 100MB files.
https://imagetostl.com/view-pcd-online

### VScode
Basic visualization with `vscode-3d-preview` extention.
https://github.com/tatsy/vscode-3d-preview

### C++
https://pcl.readthedocs.io/en/latest/index.html#visualization

### Python (Open3D)
Using the `open-3d` library.
```python
import open3d as o3d
pcd = o3d.io.read_point_cloud("file.pcd")
o3d.visualization.draw_geometries([pcd])
```

### PCD Viewer

#### Installation (Linux)

```bash
./install.bash
```
It will install the PCD Viewer as an application (desktop entry, binary for terminal) and set it as the default viewer for `.pcd` files. It relies on a local virtual environment with the `open3d` library installed.

#### Usage

Terminal
```bash
./pcd_viewer.bash file.pcd
```

#### Usage (File Manager)
Just double click on a `.pcd` file to open it with PCD Viewer or right click and select "Open with PCD Viewer".

#### Uninstallation

```bash
./uninstall.bash
```

### Other
PCDViewer looks interesting but as only complied files are available, I wouldn't recommend.
https://github.com/XuShengpan/PCDViewer