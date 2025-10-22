WITH shipment AS (
    SELECT 
        -- concat 2 columns in order to get the shipment key
        CONCAT(shipment_id, '_', sub_id) AS shipment_key,
        DATE_FORMAT(shipment_date, '%Y-%m') AS year_month_date
    FROM amazon_shipment
)

SELECT 
    year_month_date,
    COUNT(shipment_key)
FROM 
    shipment
GROUP BY year_month_date


-- Solution without CTE
SELECT
  DATE_FORMAT(shipment_date, '%Y-%m') AS year_month,
  COUNT(DISTINCT CONCAT(shipment_id, '_', sub_id)) AS shipments
FROM amazon_shipment
GROUP BY year_month
ORDER BY year_month;
