# how to download pgadmin in docker

docker run -it \
-e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
-e PGADMIN_DEFAULT_PASSWORD = "root' \

# default port for pgadmin
-e 8080:80 \
dpage/pgadmin4


docker run -it   -e PGADMIN_DEFAULT_EMAIL="admin@admin.com"   -e PGADMIN_DEFAULT_PASSWORD="root"   -p 8080:80 --network=pg-network --name pgadmin   dpage/pgadmin4