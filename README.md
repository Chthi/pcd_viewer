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

### Python
Using the `open-3d` library.
```
python pcd_view.py ~/carla/HDMaps/Town02.pcd
```

#### Installation

```
conda install -c open3d-admin open3d
# some open3d dependency may not be installed automatically with the above command 
conda install -c conda-forge plyfile
# probably needed to also install
conda install -c conda-forge libstdcxx-ng
conda install -c anaconda numpy 
```

### Other
PCDViewer also looks nice² but only complied files so I wouldn't recommend.
https://github.com/XuShengpan/PCDViewer