{{ config(materialized='table') }}
with
orders as (
    select * from {{ ref('stg_orders') }}
),
lineitem as (
    select * from {{ source('tpch', 'lineitem') }}
)

select
    orders.o_custkey,
    orders.customer_name,
    sum(lineitem.l_extendedprice * (1 - lineitem.l_discount)) as total_revenue
from orders
join lineitem
    on orders.o_orderkey = lineitem.l_orderkey
group by orders.o_custkey, orders.customer_name
