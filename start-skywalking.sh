docker kill skywalking
docker rm skywalking
docker run -d --restart always \
              --name skywalking \
              -p 1234:1234 \
              -p 11800:11800 \
              -p 12800:12800 \
              --link elasticsearch:elasticsearch \
              -e SW_STORAGE=elasticsearch \
              -e SW_STORAGE_ES_CLUSTER_NODES=elasticsearch:9200 \
              apache/skywalking-oap-server:8.7.0-es6
