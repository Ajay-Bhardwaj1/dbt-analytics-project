with source as (
    select * from {{ref('raw_payments')}}
),

renamed as(
    select 
        id as payment_id,
        order_id,
        payment_method,
        -- amount is stored in cents in the raw data,
        -- divide by 100 to convert to dolloars
        amount/100.0 as amount
    from source
)


select * from renamed;