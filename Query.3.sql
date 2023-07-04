SELECT COUNT(DISTINCT c.customer_id) AS total_customers
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id;


