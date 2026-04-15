/* Write your PL/SQL query statement below */
SELECT 
    p.product_id,
    p.product_name
FROM Product p
JOIN Sales s
    ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
HAVING 
    SUM(
        CASE 
            WHEN s.sale_date < '2019-01-01' 
              OR s.sale_date > '2019-03-31' 
            THEN 1 
            ELSE 0 
        END
    ) = 0;