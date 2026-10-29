{{ config(
    materialized='view'
    )
}}

with src_hosts as (
    select *
    from {{ ref('src_hosts') }}
)
select
    host_id,
    NVL(host_name, 'Unknown') as host_name,
    is_superhost,
    host_created_at,
    host_updated_at
from src_hosts