with raw_listings as (
    SELECT * FROM {{source('airbnb','listings')}}
)
SELECT ID AS listing_id,
       LISTING_URL as listing_name, 
       NAME,
       ROOM_TYPE,
       MINIMUM_NIGHTS,
       HOST_ID,
       PRICE as price_str,
       CREATED_AT,
       UPDATED_AT 
FROM RAW_LISTINGS