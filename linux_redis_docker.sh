#!/bin/bash
#安裝redis
sudo mkdir redis
cd redis
sudo wget http://download.redis.io/releases/redis-2.8.17.tar.gz
sudo tar xzf redis-2.8.17.tar.gz
cd redis-2.8.17
sudo make
cd src
sudo ./redis-server
sudo ./redis-server ../redis.conf
#建置redis環境
sudo docker pull redis
sudo docker run -d -p 6379:6379 redis redis-server
done
