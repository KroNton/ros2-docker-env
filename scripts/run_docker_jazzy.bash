
xhost local:root


XAUTH=/tmp/.docker.xauth
docker rm ros2_gazzy_cont

docker run -it \
    --name=ros2_gazzy_cont \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    -v ~/ros2_ws/:/ros2_ws/ \
    ghcr.io/kronton/ros2-docker-env:jazzy-full-0.0.2  \
    bash

echo "Done."
