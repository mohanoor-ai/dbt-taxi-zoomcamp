{{ config(materialized='table') }}

select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone
from {{ ref('taxi_zone_lookup') }}

/* Note: We use 'ref' to look at the 'seed' file we just loaded.
   This creates a reusable Dimension table for our locations.
*/