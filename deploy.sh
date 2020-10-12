cd /root/MADINA-TIC/MADINA-TIC-BACK
pwd
sudo git pull
cd ..
cd /root/MADINA-TIC/MADINA-TIC-FRONT
pwd
sudo git pull
cd ..
pwd
sudo docker build -t madina-tic/backend:0.1 ./MADINA-TIC-BACK
sudo docker build -t madina-tic/frontend:0.2 ./MADINA-TIC-FRONT
sudo docker-compose down
sudo docker volume rm madina-tic_MADINA-TIC-FRONT
sudo git pull
sudo docker-compose up -d
