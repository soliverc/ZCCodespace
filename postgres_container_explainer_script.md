# running a postgres container and setting up postgre

# usual run script
docker run -it postgres:13 \ 

# set up user, pass, and db name
-e POSTGRES_USER="root" \
-e POSTGRES_PASSWORD="root" \
-e POSTGRES_DB="ny_taxi" \
# set a storage area on the host computer to use for DB storage
# needs physical storage and data will be lost when container is shut down
# flag is -v for volume
# first, state storage area on host machine
# this is in my working directory
# then ater colon, state area on container where data will be mapped to
# so: host_folder : container_folder
-v $(pwd)/ny_taxi_postgres_data: /var/lib/postgresql/data \
# state which ports will be used
# i think these are default for postgres
# flag for port is -p
-p 5432:5432




# new style to add it to a network

docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
  -p 5432:5432 \
  --network=pg-network \
  --name pg-database \
  postgres:13
