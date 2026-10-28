with raw_hosts as (
    select *
    from AIRBNB_DBT.RAW.RAW_HOSTS
)
select
    id as host_id,
    name as host_name,
    is_superhost,
    created_at as host_created_at,
    updated_at as host_updated_at
from raw_hosts