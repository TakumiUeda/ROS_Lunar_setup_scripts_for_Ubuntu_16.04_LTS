#Original -> http://wiki.ros.org/lunar/Installation/Ubuntu
# ROS Version Lunar

#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update

#Desktop-full install
sudo apt-get install ros-lunar-desktop-full

#Desktop install
#sudo apt-get install ros-lunar-desktop

#ROS-Base install
#sudo apt-get install ros-lunar-ros-base

#Initialize rosdep
sudo rosdep init
rosdep update

#Environment setup
echo "source /opt/ros/lunar/setup.bash" >> ~/.bashrc
source ~/.bashrc

#Dependencies for building packages
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
