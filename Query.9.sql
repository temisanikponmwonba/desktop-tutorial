SELECT c.customer_id, c.first_name, c.last_name, MAX(f.release_year) AS most_recent_movie_year
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY most_recent_movie_year DESC
LIMIT 5;
