{{ config(materialized='table') }}

select
  productkey,
  product_id as productid,
  count(distinct order_id) as total_orders,
  sum(order_qty) as total_units_sold,
  sum(sales_amount) as total_sales
from raw.fact_sales
group by 1,2
order by total_sales desc
