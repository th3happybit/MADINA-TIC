cd /root/MADINA-TIC/MADINA-TIC-BACK
pwd
git pull
cd ..
pwd
sudo docker build -t madina-tic/backend:0.1 ./MADINA-TIC-BACK
sudo docker-compose up -d
