import pandas as pd
from sqlalchemy import create_engine
import argparse
import os







def main(params):

    user = params.user
    password = params.password
    host = params.host
    port = params.port
    db = params.db
    table_name = params.table_name
    url = params.url
    csv_name = 'output.csv.gz'

    print('downloading stuff')
    # download csv
    os.system(f'wget {url} -O {csv_name}')

    # order of arguments: database type:// user:password @hostname:port/database_name
    engine = create_engine(f'postgresql://{user}:{password}@{host}:{port}/{db}')
    engine.connect()


    # Possibly too much data to put in at once. Will read it in in chunks of 100k. 

    df_iter = pd.read_csv(csv_name, 
                    compression='gzip',
                    low_memory=False, 
                    iterator=True, 
                    chunksize=100000)

    # Just inserting the headers first

    df = next(df_iter)

    df.head(0).to_sql(name=table_name, con=engine, if_exists='replace')

    df.to_sql(name=table_name, con=engine, if_exists='append')

    # Checked the table in postgres. It now exists. Time to add the entire data in. 

    # Change if exists to append. 
    total_appended = []

    while True:
        try:
            df = next(df_iter)
        except StopIteration:
            print("All data has been loaded.")
            break

        numrows = df.shape[0]
        
        # Convert columns to datetime
        df.tpep_pickup_datetime = pd.to_datetime(df.tpep_pickup_datetime)
        df.tpep_dropoff_datetime = pd.to_datetime(df.tpep_dropoff_datetime)

        # Try to append to SQL, catch any SQL-related exceptions
        try:
            df.to_sql(name=table_name, con=engine, if_exists='append')
            total_appended.append(numrows)
            print(f'{sum(total_appended)} rows appended')
        except Exception as e:
            print(f"An error occurred: {e}")
            break

if __name__ == '__main__':
    # description is what comes up when you do --help
    parser = argparse.ArgumentParser(description='Ingest csv data to postgres')

    parser.add_argument('--user', help='username for postgres')
    parser.add_argument('--password', help='pass for postgres')
    parser.add_argument('--host', help='host for postgres')
    parser.add_argument('--port', help='port for postgres')
    parser.add_argument('--db', help='db name for postgres')
    parser.add_argument('--table_name', help='name of table we write results to')
    parser.add_argument('--url', help='url of csv')


    args = parser.parse_args()

    main(args)




   