while ! nc -z localhost 1985; do
  sleep 1
  echo "AirSim not Ready"
done
echo "AirsimReady"
