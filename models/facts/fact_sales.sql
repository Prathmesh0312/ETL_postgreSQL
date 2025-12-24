{{ config(materialized='table') }}

with o as (
  select * from raw.dim_orders
),
od as (
  select * from raw.dim_order_details
),
p as (
  select * from raw.dim_product
),
c as (
  select * from raw.dim_customer
),
d as (
  select * from raw.dim_date
)

select
  -- grain: one row per (order_id, product_id)
  od.order_id,
  od.product_id,

  -- surrogate keys
  c.customerkey,
  p.productkey,
  d.datekey,

  -- identifiers
  o.customer_id as customerid,
  o.order_date,

  -- measures
  od.order_qty,
  p.product_retail_price,
  (od.order_qty * p.product_retail_price::numeric) as sales_amount

from od
join o on o.order_id = od.order_id
join p on p.productid = od.product_id
join c on c.customerid = o.customer_id
left join d on d.date = o.order_date
