# which image to use
FROM python:3.9
# things to set up

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

s
# set up working directory
# this also CD's to the WD when runnning the image
WORKDIR /app/

# copy the pipeline script from the folder to the image
# i believe it sends it to the WD
COPY ingest_data.py ingest_data.py

# open we want it to run python script when it launches

ENTRYPOINT [ "python", "ingest_data.py" ]
