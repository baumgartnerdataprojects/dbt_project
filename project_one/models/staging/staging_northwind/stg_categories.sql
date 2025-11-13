with categories as (
    select CAST(category_id AS INT64) as category_id
    , CAST(category_name AS STRING) as category_name
    , CAST(description AS STRING) as description
    , CAST(picture AS BYTES) as picture    
    from {{ source('northwind', 'categories') }}    
)


select * from categories