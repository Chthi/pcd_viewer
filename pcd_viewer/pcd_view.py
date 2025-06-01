#!/usr/bin/env python3

import open3d as o3d
import argparse


def main():
    parser = argparse.ArgumentParser(description='PCD Viewer')
    parser.add_argument('pcd_file', type=str, help='Path to the PCD file')
    args = parser.parse_args()
    
    if not args.pcd_file.endswith('.pcd'):
        print("Please provide a valid PCD file.")
        return

    # Load the PCD file
    pcd = o3d.io.read_point_cloud(args.pcd_file)

    # Check if the point cloud is empty
    if not pcd.has_points():
        print("The point cloud is empty.")
        return

    # Visualize the point cloud
    o3d.visualization.draw_geometries([pcd])


if __name__ == '__main__':
    main()
