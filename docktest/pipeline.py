import pandas as pd
import sys

print(sys.argv)

# arg 0 is name of file
# arg 1 is whatever we pass to the script

# let's pass a day to the docker file 
day = sys.argv[1]

#do fancy stuff

print(f'job done for {day}')