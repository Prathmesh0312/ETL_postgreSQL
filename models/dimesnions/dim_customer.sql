with base as (
    select
        row_number() over (order by customer_id) as customerkey,
        customer_id as customerid,
        customer_firstname as firstname,
        customer_lastname as lastname,
        customer_email as email,
        customer_address as address,
        customer_city as city,
        customer_state as state,
        customer_zip as zip,
        customer_phone as phone
    from raw.fm_customers
)

select * from base
