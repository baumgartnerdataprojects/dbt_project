with categories as (
    select 
    category_id, 
    category_name, 
    description, 
    picture    
    from {{ source('northwind', 'categories') }}    
)

select * from categories