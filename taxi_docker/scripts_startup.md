# create network for both pgadmin and postgres containers to sit in

docker network create pg-network


# setup postgres container

docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
  -p 5432:5432 \
  --network=pg-network \
  --name pg-database \
  postgres:13

# set up pdadmin container

docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  --network=pg-network \
  --name pgadmin \
  dpage/pgadmin4

# python ingest script

python ingest_data.py \
--user=root \
--password=root \
--host=localhost \
--port=5432 \
--db=ny_taxi \
--table_name=yellow_taxi_trips \
--url="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-01.csv.gz"

# building our new docker ingestion file

docker build -t taxi_ingest:v001 .

# run ingestion file.

docker run -it \
>   --network=pg-network \
>   taxi_ingest:v001 \
>     --user=root \
>     --password=root \
# host argument that goes into python script, not anything to do with container
>     --host=pg-database \
>     --port=5432 \
>     --db=ny_taxi \
>     --table_name=yellow_taxi_trips \
>     --url=${URL}