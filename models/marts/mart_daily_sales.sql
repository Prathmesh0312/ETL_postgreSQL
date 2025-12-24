{{ config(materialized='table') }}

select
  datekey,
  order_date::date as order_date,
  count(distinct order_id) as total_orders,
  sum(order_qty) as total_units,
  sum(sales_amount) as total_sales
from raw.fact_sales
group by 1,2
order by 2
