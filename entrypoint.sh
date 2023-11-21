#!/bin/bash
set -e
source /Colosseum/ros2/install/setup.bash
#wait until airsim is ready by checking if the port 1985 is open
while ! nc -z localhost 1985; do
  sleep 1
done
sleep 2
exec "$@"
