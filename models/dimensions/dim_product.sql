with stg_products as (
    select * from raw.fm_products
)

select
    {{ dbt_utils.generate_surrogate_key(['product_id']) }} as productkey,
    product_id as productid,
    product_name,
    product_department,
    product_retail_price,
    product_wholesale_price,
    product_is_active,
    product_add_date,
    product_vendor_id,
    product_description
from stg_products
