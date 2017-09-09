# nyc-tlc/trip data/yellow_tripdata_2009-01.csv
# nyc-tlc/trip data/yellow_tripdata_2009-02.csv
# nyc-tlc/trip data/yellow_tripdata_2009-03.csv
# nyc-tlc/trip data/yellow_tripdata_2009-04.csv
# nyc-tlc/trip data/yellow_tripdata_2009-05.csv
# nyc-tlc/trip data/yellow_tripdata_2009-06.csv
# nyc-tlc/trip data/yellow_tripdata_2009-07.csv
# nyc-tlc/trip data/yellow_tripdata_2009-08.csv
# nyc-tlc/trip data/yellow_tripdata_2009-09.csv
# nyc-tlc/trip data/yellow_tripdata_2009-10.csv
# nyc-tlc/trip data/yellow_tripdata_2009-11.csv
# nyc-tlc/trip data/yellow_tripdata_2009-12.csv

%.csv:
	python download.py $@
