select max(mn), min(ag) from (select date(time), avg(clouds) as ag , median(humidity) as mn from 
{{source('demo','weather')}} group by date(time) limit 10)