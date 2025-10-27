SELECT
    id,
    cat,
    subcat,
    maintenance
FROM {{ source('customer_sales_raw', 'erp_px_cat_g1v2') }}