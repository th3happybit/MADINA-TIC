cd /root/MADINA-TIC/MADINA-TIC-FRONT
pwd
git pull
cd ..
pwd
find ./ -type f -exec sed -i 's/157.230.19.233/157.230.19.233/g' {} +
sudo docker build -t madina-tic/frontend:0.2 ./MADINA-TIC-FRONT
sudo docker-compose down
sudo docker volume rm madina-tic_MADINA-TIC-FRONT
sudo docker-compose up -d
