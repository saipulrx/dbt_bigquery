with source as (

    select * from {{ ref('suppliers') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source