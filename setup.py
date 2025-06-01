from setuptools import setup

setup(
    name='pcd_viewer',
    version='0.2.0',
    packages=['pcd_viewer'],
    entry_points={
        'console_scripts': [
            'pcd_viewer = pcd_viewer.pcd_view:main',
        ],
    },
    install_requires=[
        'open3d>=0.15.0',
    ],
)