# ros2-docker-env
This repository provides script files for running ROS 2 environments in Docker containers. Each script is tailored to a specific ROS 2 distribution.

## Features
- Predefined Dockerfiles for different ROS 2 distributions.
- Simple shell scripts to build and run containers.
- Easy to extend for additional distributions or configurations.

## Directory Structure
```
ros2-docker-env/
├── README.md
├── LICENSE
├── scripts/
│   ├── run-humble.sh
│   ├── run-jazzy.sh
│   └── ....
├── docker/
│   ├── Dockerfile-humble
│   └── Dockerfile-jazzy
└── .gitignore
```
