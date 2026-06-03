with RAW_HOSTS as (
    SELECT * FROM {{source('airbnb','hosts')}}
)
SELECT 
    ID AS HOST_ID,
    NAME AS HOST_NAME,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM RAW_HOSTS