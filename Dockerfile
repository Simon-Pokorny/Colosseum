FROM colosseum-base
WORKDIR /Colosseum/ros2/
COPY ros2/ .
RUN . /opt/ros/${ROS_DISTRO}/setup.sh && \
    colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release

ENTRYPOINT [ "../entrypoint.sh" ]
CMD [ "ros2", "launch", "airsim_ros_pkgs", "airsim_node.launch.py" ]
