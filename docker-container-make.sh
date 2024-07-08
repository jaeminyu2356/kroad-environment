docker build -f docker-base -t kroad:V.1 .

docker run -it 
--privileged -e DISPLAY=$DISPLAY 
--env="QT_X11_NO_MITSHM=1" 
-v="/tmp/.gazebo/:/root/.gazebo/" 
-v /tmp/.X11-unix:/tmp/.X11-unix:ro 
-v /docker_mounted/kroad/:/root/mounted_folder/ 
--hostname kroad 
--network host 
--gpus all 
--name kroad kroad:V.1 bashecho