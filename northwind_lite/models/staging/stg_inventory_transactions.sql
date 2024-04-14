with source as (

    select * from {{ ref('inventory_transactions') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source