docker kill etcd
docker rm etcd
docker run -d --restart always \
              --name etcd \
              -p 2379:2379 \
              -p 2380:2380 \
              --env ALLOW_NONE_AUTHENTICATION=yes  \
              bitnami/etcd:3.4.15