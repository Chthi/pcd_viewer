
# source https://stackoverflow.com/questions/66089872/how-to-open-and-view-pcd-files-in-python

import open3d as o3d
import numpy as np
import argparse

# Instantiate the parser
parser = argparse.ArgumentParser()
# Required positional argument
parser.add_argument('path', type=str, help='Path to ".pcd" file.')
args = parser.parse_args()

assert args.path.endswith(".pcd")

cloud = o3d.io.read_point_cloud(args.path)
print(np.asarray(cloud.points))
print(np.asarray(cloud.colors))
print(np.asarray(cloud.normals))
o3d.visualization.draw_geometries([cloud])



