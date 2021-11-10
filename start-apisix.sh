docker kill apisix
docker rm apisix
docker run -d --restart always \
              --name apisix \
              -v `pwd`/apisix/conf/config.yaml:/usr/local/apisix/conf/config.yaml \
              -v /var/log/apisix:/usr/local/apisix/logs  \
              --link etcd:etcd \
              --link skywalking:skywalking \
              -p 9080:9080 \
              -p 9091:9091  \
              -p 9443:9443 \
              apache/apisix:2.6-alpine