docker kill elasticsearch
docker rm elasticsearch
docker run -d --restart always \
             --name elasticsearch \
             -p 9200:9200 \
             -p 9300:9300 \
             -e "discovery.type=single-node" \
            -v /data/elasticsearch/data:/usr/share/elasticsearch/data \
            -v /data/elasticsearch/logs:/usr/share/elasticsearch/logs \
            elasticsearch:7.5.1