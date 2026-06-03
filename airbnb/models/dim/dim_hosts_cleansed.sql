{{
  config(materialized = 'view')
}}
WITH dim_listings_cleansed as
(SELECT * FROM {{ref('src_hosts')}})
SELECT
   HOST_ID,
    NVL(HOST_NAME,'Anonymous') AS HOST_NAME,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM dim_listings_cleansed