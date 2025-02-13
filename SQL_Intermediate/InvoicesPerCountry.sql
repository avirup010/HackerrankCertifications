SELECT 
    co.country_name,
    COUNT(*) AS total_customers,
    ROUND(AVG(i.total_price), 6) AS avg_total_price
FROM 
    country AS co
    INNER JOIN city AS ci ON co.id = ci.country_id
    INNER JOIN customer AS cu ON ci.id = cu.city_id
    INNER JOIN invoice AS i ON cu.id = i.customer_id
GROUP BY 
    co.country_name
HAVING 
    AVG(i.total_price) > (SELECT AVG(total_price) FROM invoice);
