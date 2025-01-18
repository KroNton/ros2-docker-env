# Serial micro-ROS Agent
docker run -it \
--rm -v /dev:/dev \
--privileged \
--net=host \
microros/micro-ros-agent:jazzy serial \
--dev /dev/esp -v6