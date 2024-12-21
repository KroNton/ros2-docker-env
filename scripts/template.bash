
xhost local:root


XAUTH=/tmp/.docker.xauth
docker rm cont_name

docker run -it \
    --name=cont_name \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    -v ~/ros2_ws/:/ros2_ws/ \
    image:tag \
    bash

echo "Done."
