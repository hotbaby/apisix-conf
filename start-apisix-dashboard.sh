docker kill apisix-dashboard
docker rm apisix-dashboard
docker run -d --restart always \
              -p 9000:9000 \
              -v `pwd`/dashboard/conf/conf.yaml:/usr/local/apisix-dashboard/conf/conf.yaml \
              --name apisix-dashboard \
              apache/apisix-dashboard:2.7