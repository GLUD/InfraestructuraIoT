sed -i "s/uiPort:.*/uiPort:$1,/g" node-red-template/settings.js
sed -i "s/username:.*/username: \"$2\",/g" node-red-template/settings.js
sed -i "s/password:.*/password: \"\",/g" node-red-template/settings.js
docker build . -t iot4dummies/client
docker run --net testnet -d -p $1:$1 -it --name $2 iot4dummies/client
docker exec -it server sed -i "38i  location /$2/ {\n proxy_pass http://$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cliente1
):$1/; \n proxy_http_version 1.1; \n proxy_set_header Upgrade \$http_upgrade;\n proxy_set_header Connection 'upgrade';\n }\n" /etc/nginx/sites-available/default
docker exec -it server /usr/sbin/nginx -s reload

