sudo apt update
sudo apt upgrade

cd ~/kroad-environment/files
docker build -f docker-base -t kroad:V.2.1 .

docker run -it \
-e DISPLAY=$DISPLAY \
--privileged \
--env="QT_X11_NO_MITSHM=1" \
-v "/tmp/.gazebo/:/root/.gazebo/" \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-v ~/docker_mounted/kroad/:/root/mounted_folder/ \
--hostname kroad \
--network host \
--name kroad_v2 kroad:V.2.1 bash
