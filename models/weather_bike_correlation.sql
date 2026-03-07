select tf.*, dw.* from {{ref ('trip_fact')}} as tf left join {{ref('daily_weather')}} as dw 
on tf.st_time = dw.day_weather