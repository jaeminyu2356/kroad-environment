sudo apt update
sudo apt upgrade


#docker 설치
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

apt-get install x11-apps

#sudo 권한 없이 docker 에게 권한 부여
sudo groupadd docker
sudo chmod 666 /var/run/docker.sock
sudo usermod -aG docker ${USER}
sudo service docker restart

# logout 후 재로그인

echo "xhost +local:docker" >> ~/.bashrc
bash
docker ps

docker build -f docker-base -t kroad:V.1 .
docker ps -a