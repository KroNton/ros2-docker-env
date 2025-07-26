
xhost local:root


XAUTH=/tmp/.docker.xauth
docker rm ros2_gazzy_cont

docker run -it \
    --name=ros2_gazzy_cont \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --env="ROS_AUTOMATIC_DISCOVERY_RANGE" \
    --env="ROS_STATIC_PEERS" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    -v "$HOME/kronton_ws:/kronton_ws" \
    osrf/ros:jazzy-desktop-full  \
    bash

echo "Done."
