with Source as (
    select * from {{ref('raw_customers')}}
),

renamed as (
    Select 
        id as cumtomer_id,
        first_name,
        last_name,
    from source
)


select * from renamed;