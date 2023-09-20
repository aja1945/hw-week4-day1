SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor;

SELECT customer_id, amount
FROM payment
WHERE amount > 5
ORDER BY amount ASC;

 -- conjunctions AND and OR operators
 SELECT customer_id, amount
 FROM payment
 WHERE amount > 5 OR customer_id = 3
 ORDER BY amount DESC;

 --aggregator
 -- SUM, AVG, COUNT, MIN, MAX

 SELECT SUM(amount)
 FROM payment
 WHERE amount > 0;

 DISTINCT
 SELECT DISTINCT customer_id
 FROM payment
 WHERE amount > 5

 SELECT COUNT(DISTINCT customer_id)
 FROM payment
 WHERE amount > 5;

 -- GROUP BY
 SELECT customer_id, SUM(amount)
 FROM payment
 WHERE amount > 0
 GROUP BY customer_id
 ORDER BY SUM(amount) DESC;

 --HAVING CLAUSE
 -- (Adding a filter to our aggregate)
 SELECT customer_id, SUM(amount)
 FROM payment
 WHERE amount > 0
 GROUP BY customer_id
 HAVING SUM(amount) > 100
 ORDER BY SUM(amount) DESC;

 -- EXTRA STUFF
 -- LIMIT, OFFSET
 SELECT customer_id, SUM(amount)
 FROM payment
 WHERE amount > 0
 GROUP BY customer_id
 HAVING SUM(amount) > 50
 LIMIT 3
 