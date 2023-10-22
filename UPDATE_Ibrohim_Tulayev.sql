
-- 1
UPDATE film
SET rental_duration = 21, -- Three weeks (7 days per week)
    rental_rate     = 9.99
WHERE film_id = 1001;

-- 2
UPDATE customer
SET first_name = 'Ibrohim',
    last_name  = 'Tulayev',
    email      = 'ibrohimtulayev@gmail.com',
    address_id = 1
WHERE customer_id = 1;

-- 3
UPDATE customer
SET create_date = current_date
WHERE customer_id = 1;