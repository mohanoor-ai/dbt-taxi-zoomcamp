{{ config(materialized='table') }}

-- This model creates a lookup table for taxi zones
select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone
from {{ ref('taxi_zone_lookup') }}