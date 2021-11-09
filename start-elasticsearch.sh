docker kill elasticsearch
docker rm elasticsearch
docker run -d --restart always \
             --name elasticsearch \
             -p 9200:9200 \
             -p 9300:9300 \
             -e "discovery.type=single-node" \
             elasticsearch:6.7.2
