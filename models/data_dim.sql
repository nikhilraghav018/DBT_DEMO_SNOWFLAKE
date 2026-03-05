with time_giver as (select to_timestamp(start_time) as date_time, year(date_time) as year, 
hour(date_time) as hr, dayofweek(date_time) as daynum, dayname(date_time) as dn, case when 
dayname(date_time) in ('sat', 'sun') then 'Weekday' else 'Business_day' end as day_type
from {{ source('demo', 'bikes')}})
select * from time_giver