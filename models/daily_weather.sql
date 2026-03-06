with weather_giver as ( select date(time) as day_weather, weather from {{source ('demo', 'weather')}}),
window_applied as (select day_weather, weather, count(weather) as w_count from weather_giver group by day_weather, weather),

-- in this you directly get the rows where rk is equal to 1, like without seeing the 1,2,3... numbers
-- rk_giver as (select day_weather, weather, w_count from 
-- window_applied qualify row_number() over(partition by day_weather order by w_count desc) = 1 )

-- in this style you get the numbers like 1,2,3... and then you can see that these are the rows with rk number 1
-- you need to accordignly change the final sele t staatemnent for the bith approcahes

rk_giver as (select day_weather, weather, w_count, row_number() over(partition by day_weather order by w_count desc) as rk from 
window_applied)
select * from rk_giver where rk = 1