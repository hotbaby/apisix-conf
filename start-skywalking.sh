docker kill skywalking
docker rm skywalking
docker run -d --restart always \
              --name skywalking \
              -p 11800:11800 \
              -p 12800:12800 \
              -e TZ=Asia/Shanghai \
              --link elasticsearch:elasticsearch \
              -e SW_STORAGE=elasticsearch \
              -e SW_STORAGE_ES_CLUSTER_NODES=elasticsearch:9200 \
              apache/skywalking-oap-server:6.6.0-es7
