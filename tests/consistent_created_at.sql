SELECT
        *
FROM
        {{ ref('ftc_reviews') }} rev
INNER JOIN 
        {{ ref('dim_listings_with_hosts.sql') }} lis
USING (listing_id)
WHERE lis.created_at >= rev.review_date