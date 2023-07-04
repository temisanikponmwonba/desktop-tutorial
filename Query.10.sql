SELECT c.customer_id, c.first_name, c.last_name, EXTRACT(MONTH FROM r.rental_date) AS rental_month, COUNT(*) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, rental_month;
