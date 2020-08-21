echo "[+] After installation process"

cd /home/ec2-user/app

docker-compose down
docker-compose build
docker-compose up -d
