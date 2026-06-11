select r.listing_id
from {{ref('dim_listings_cleansed')}} l
    JOIN {{ref('fct_reviews')}} r
        using (listing_id)
where l.created_at > r.review_date