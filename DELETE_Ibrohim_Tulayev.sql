
-- 1
DELETE
FROM rental
WHERE inventory_id IN (SELECT inventory_id
                       FROM inventory
                       WHERE film_id = any (select film_id from inventory order by last_update desc limit 1));


SELECT inventory_id
FROM inventory
WHERE film_id = any (select film_id from inventory order by last_update desc limit 1);
-- 2

DELETE
FROM payment
WHERE customer_id = (SELECT customer_id
                     FROM customer
                     WHERE email = 'ibrohimtulayev@gmail.com');

DELETE
FROM rental
WHERE customer_id = (SELECT customer_id
                     FROM customer
                     WHERE email = 'ibrohimtulayev@gmail.com');
