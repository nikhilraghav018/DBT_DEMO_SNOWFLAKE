with station_info as ( select start_station_id as s_station_id, start_station_name as s_station_name, end_station_id as e_station_id, 
end_station_name as e_station_name from {{source ('demo','bikes')}})

select * from station_info