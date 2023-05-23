-- Question 1 -- 

SELECT first_name, last_name
FROM actor a 
WHERE last_name = 'Wahlberg';

-- Answer: 2 actors; Nick Wahlberg and Daryl Wahlberg


-- Question 2 -- 

-- Select *
-- FROM payment p
-- WHERE amount >= 3.99 AND amount <= 5.99; 

SELECT COUNT(*)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99; 

-- Answer: 5,607


-- Question 3 --

--SELECT *
--FROM film
--WHERE film_id IN (
--  SELECT film_id
--  FROM inventory
--  GROUP BY film_id
--  HAVING COUNT(*) = 7

SELECT film_id, COUNT(film_id) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY COUNT = 7;

-- Answer:  


-- Question 4 --

SELECT COUNT(first_name)
FROM customer c 
WHERE first_name = 'Willie';

-- Answer: 2


-- Question 5 --

--SELECT staff_id, COUNT(rental_id) AS rental_count
--FROM rental
--GROUP BY staff_id
--ORDER BY COUNT(rental_id) DESC;

SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

-- Answer: staff_id 1


-- Question 6 --

SELECT COUNT(DISTINCT(district))
FROM address;

-- Answer: 378


-- Question 7 --

SELECT film_id, COUNT(actor_id) AS actors
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
-- HAVING COUNT(actor_id) = (
-- 	SELECT MAX(actors)
-- 	FROM (
-- 		SELECT film_id, COUNT(actor_id) AS actors
-- 		FROM film_actor
-- 		GROUP BY film_id
-- 	) AS max_count
-- );

-- Answer: film_id 508 w/ 15 actors


-- Question 8 --

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
HAVING store_id = 1;

-- Answer: 13


-- Question 9 --

SELECT COUNT(amount) as amount_count
	FROM payment
	WHERE customer_id BETWEEN 380 AND 430
	GROUP BY amount
	HAVING COUNT(rental_id) > 250;

-- Answer: 3??


-- Question 10 --

SELECT rating, COUNT(rating)
	FROM film
	GROUP BY rating
	ORDER BY COUNT(rating) DESC;

-- Answer: 5 ratings and PG-13 has the most