-- Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 2

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id 
FROM inventory
ORDER BY film_id DESC;
-- Answer: 1000

-- 4. How many customers have the last name ‘William’?
select count(last_name)
FROM customer
WHERE last_name = 'William';
-- Answer: 0

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id FROM rental
GROUP BY staff_id
ORDER BY max(staff_id) DESC;
-- Answer: 2

-- 6. How many different district names are there?
select count(district) from address;
-- Answer: 603

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(actor_id) 
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC;
-- Answer: 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(customer_id) from customer WHERE store_id = 1 and last_name LIKE '%es';
-- Answer: 13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT count(amount) FROM payment;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select DISTINCT rating from film;
select rating, title from film ORDER BY rating DESC;
-- Answers: 5 and NC-17 