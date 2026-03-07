select bike_id, start_station_id, end_station_id, date(to_timestamp(start_time)) as st_time, date(to_timestamp(stop_time)) as sp_time, 
timestampdiff(second,to_timestamp(start_time),to_timestamp(stop_time)) as calc_duration, usertype 
from {{source ('demo', 'bikes')}} limit 10