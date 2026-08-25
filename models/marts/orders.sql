with orders as (
    SELECT * from {{ref('stg_orders')}}
),

payments as (
    SELECT * from {{ref('stg_payments')}}
),

order_payments as (
    SELECT
        order_id,
        SUM(amount) as total_amount

    from payments
    GROUP BY order_id
),


finalt as (
    SELECT orders.order_id,
    orders.customer_id,
    orders.order_date,
    orders.status,
    COALESCE(order_payments.total_amount,0) as amount

    from orders
    left join order_payments
        on orders.order_id=order_payments.order_id
)

select * from finalt
