SELECT AVG(rental_count) AS average_rental_count
FROM (
    SELECT COUNT(*) AS rental_count
    FROM customer c
    JOIN rental r ON c.customer_id = r.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) AS counts;



