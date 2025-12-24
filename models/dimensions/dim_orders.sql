with order_source as (
    select
        order_id,
        customer_id,
        order_date::date as order_date,
        shipped_date::date as shipped_date,
        ship_via,
        creditcard_id
    from raw.fm_orders
)
select * from order_source
