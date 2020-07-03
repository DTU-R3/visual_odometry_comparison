# visual_odometry_comparison

The folder contains the scripts to process the visual odometry data and plot the results.
In the experiment, three different visual odometry methods were compared between each other. 
* Build-in ZED Mini
* Intel Realsense T265
* ORB-SLAM2 https://github.com/DTU-R3/orb_slam_2_ros

All the calculations were performed on Nvidia Jetson TX2

* Data analysis.ipynb: process the visual odometry raw data
* Octave/: octave/matlab scripts to plot the results 

## Link to the raw data
https://aiarticlestorage.blob.core.windows.net/201909-odometry/data_without_image.zip
https://aiarticlestorage.blob.core.windows.net/201909-odometry/data_with_image.zip
