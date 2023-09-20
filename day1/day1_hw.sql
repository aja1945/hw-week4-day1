-- Week 5 - Monday Questions

-- 1. How many actors are there with the last name ‘Wahlberg’?

-- 2. How many payments were made between $3.99 and $5.99?

-- 3. What film does the store have the most of? (search in inventory)

-- 4. How many customers have the last name ‘William’?

-- 5. What store employee (get the id) sold the most rentals?

-- 6. How many different district names are there?

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT actor_id, SUM(amount)
FROM names
GROUP BY amount
HAVING actor_id(Wahlberg);

SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

SELECT SUM(amount)
GROUP BY film_id
HAVING SUM(amount) > 0
LIMIT 10

SELECT customer_id, SUM(last_name)
FROM last_name
GROUP BY amount
HAVING customer_id(William);

SELECT employee_id
FROM sales
WHERE amount
GROUP BY employee_id
HAVING SUM(amount);

SELECT district_names,
FROM store
WHERE amount 
ORDER BY(district_names);

SELECT film_actor
FROM film_id
WHERE amount
ORDER BY film_id;

SELECT customer_id
FROM store_id
WHERE amount = es
HAVING SUM(amount) = es;

SELECT SUM(amount)
FROM payment
WHERE amount > 250
GROUP BY payment.amount
ORDER BY amount ASC;

SELECT film_id
FROM rating_id
WHERE amount > OR film_id
ORDER BY(amount)