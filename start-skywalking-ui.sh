docker kill skywalking-ui
docker rm skywalking-ui
docker run -d --restart always \
              --name skywalking-ui \
              -p 8080:8080 \
              --link skywalking:skywalking \
              -e SW_OAP_ADDRESS=skywalking:12800 \
              apache/skywalking-ui:8.7.0
