SELECT c.customer_id, c.first_name, c.last_name, COUNT(*) AS rental_count
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
WHERE r.rental_id IS NULL
GROUP BY c.customer_id, c.first_name, c.last_name;
