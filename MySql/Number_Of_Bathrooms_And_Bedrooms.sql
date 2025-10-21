SELECT 
    city,
    property_type,
    AVG(bathrooms) AS avg_baths,
    AVG(bedrooms) AS avg_beds
FROM 
airbnb_search_details
group by city, property_type;