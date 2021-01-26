--Question 1
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

--Question 3
SELECT film_id, COUNT(film_id) AS Most_Frequent
FROM inventory
GROUP BY film_id
ORDER BY Most_frequent DESC;

--Question 4
SELECT COUNT(last_name)
FROM customer 
WHERE last_name = 'William';

--Question 5
SELECT staff_id, COUNT(staff_id) as Amount_Sold
FROM rental
GROUP BY staff_id
ORDER BY Amount_Sold DESC
LIMIT 1;

--Question 6
SELECT COUNT(DISTINCT district)
FROM address;

--Question 7
SELECT film_id, COUNT(film_id) AS Most_Actors
FROM film_actor
GROUP BY film_id
ORDER BY Most_Actors DESC
LIMIT 1;

--Question 8
SELECT COUNT(DISTINCT store_id)
FROM customer
WHERE last_name LIKE '%es';

--Question 9
SELECT COUNT(amount), customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING COUNT(amount) > 250;

--Question 10
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(rating) AS Most_Movies
FROM film
GROUP BY rating
ORDER BY Most_Movies DESC
LIMIT 1;
