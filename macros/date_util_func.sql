{% macro function_1(x) %}

case when {{x}} < current_date then 'past' else 'future' end as era

{% endmacro %}

{% macro function_2(x) %}

case when month({{x}}) in (1,2,3,4) then 'Q1'
     when month({{x}}) in (5,6,7,8) then 'Q2' else 'Q3' end as quarter_yr

{% endmacro %}