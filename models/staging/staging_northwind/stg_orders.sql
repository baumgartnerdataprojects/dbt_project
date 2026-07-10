with orders as (
    select 
    CAST(order_id AS INT64) as order_id
    , CAST(customer_id AS STRING) as customer_id
    , CAST(employee_id AS INT64) as employee_id
    , CAST(order_date AS DATE) as order_date
    , CAST(required_date AS DATE) as required_date
    , CAST(shipped_date AS DATE) as shipped_date
    , CAST(ship_via AS INT64) as ship_via
    , CAST(freight AS FLOAT64) as freight
    , CAST(ship_name AS STRING) as ship_name
    , CAST(ship_address AS STRING) as ship_address
    , CAST(ship_city AS STRING) as ship_city
    , CAST(ship_region AS STRING) as ship_region
    , CAST(ship_postal_code AS STRING) as ship_postal_code
    , CAST(ship_country AS STRING) as ship_country
    from {{ source('northwind', 'orders') }}
)

select * from orders