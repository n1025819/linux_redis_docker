#!/bin/bash
#建置redis環境
sudo docker pull redis
sudo docker run -d -p 6379:6379 redis redis-server
done
