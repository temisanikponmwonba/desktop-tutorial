SELECT*FROM PAYMENT;

MINIMUM AND MAXIMUM AMOUNT
select min (amount) from payment;

select max(amount) from payment;

select amount from payment
order by amount asc;

SELECT MAX(payment_date) from payment;

select min(payment_date) from payment;


SUM
select sum(amount) from payment;

AVERAGE
select avg(amount) from payment;

 tells how many rows in the table
select count(*)from payment;

standard deviation
select STDDEV (amount)from payment;

VARIANCE IS STANDARD DEVIATION SQUARED
select variance(amount)from payment;

GROUP BY
select category_|id, count(*) AS CATEGORY_COUNT
FROM FILM_CATEGORY
GROUP BY CATEGORY_ID
order by category _count asc 

SELECT c.category_id, c.name AS category_name, COUNT(*) AS film_count
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.category_id, c.name
ORDER BY film_count DESC;


SELECT rating, COUNT(*) AS film_count
FROM film
GROUP BY rating;

SELECT c.category_id, c.name AS category_name, COUNT(f.film_id) AS film_count, SUM(p.amount) AS total_amount
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY c.category_id, c.name
ORDER BY total_amount DESC;

SELECT f.rating, SUM(p.amount) AS total_revenue
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.rating
ORDER BY total_revenue DESC;


SELECT c.customer_id, c.first_name, c.last_name, COUNT(*) AS rental_count
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(*) > 30;


SELECT f.rating, SUM(p.amount) AS total_revenue
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.rating
HAVING SUM(p.amount) > 13000
ORDER BY total_revenue DESC;


SELECT film_id, title
FROM film
EXCEPT
SELECT f.film_id, f.title
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id;





