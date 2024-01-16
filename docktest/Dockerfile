# which image to use
FROM python:3.9
# things to set up
RUN pip install pandas

# set up working directory
# this also CD's to the WD when runnning the image
WORKDIR /app/

# copy the pipeline script from the folder to the image
# i believe it sends it to the WD
COPY pipeline.py pipeline.py

# open we want it to run python script when it launches

ENTRYPOINT [ "python", "pipeline.py" ]
