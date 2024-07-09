sudo apt update
sudo apt upgrade

docker build -f docker-base -t kroad:V.2 .

docker run -it \
-e DISPLAY=$DISPLAY \
--privileged \
--env="QT_X11_NO_MITSHM=1" \
-v="/tmp/.gazebo/:/root/.gazebo/" \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-v /docker_mounted/kroad/:/root/mounted_folder/ \
--hostname kroad \
--network host \
--name kroad kroad:V.2 bash
