{{ config(materialized='table') }}

with orders as (
    select * from {{ source('tpch', 'orders') }}
),

customers as (
    select * from {{ source('tpch', 'customer') }}
)

select
    orders.o_orderkey,
    orders.o_custkey,
    customers.c_name as customer_name,
    orders.o_totalprice as total_price,
    extract(year from orders.o_orderdate) as order_year
from orders 
join customers on orders.o_custkey = customers.c_custkey
