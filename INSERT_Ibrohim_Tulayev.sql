-- 1
INSERT INTO film (title, description, release_year, language_id, original_language_id, rental_duration, rental_rate,
                  length, replacement_cost, rating, last_update, special_features, fulltext)
VALUES ('The Shawshank Redemption',
        'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
        '1994',
        1,
        1,
        14,
        4.99,
        NULL,
        19.99,
        'G',
        now(),
        ARRAY ['Special Feature 1', 'Special Feature 2'], -- Special features as an array
        to_tsvector('english',
                    'The Shawshank Redemption Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.'));
-- 2
INSERT INTO actor (first_name, last_name)
VALUES ('Tim', 'Robbins'),
       ('Morgan', 'Freeman'),
       ('Bob', 'Gunton');

INSERT INTO film_actor (actor_id, film_id)
VALUES (201, 1001);

INSERT INTO inventory (film_id, store_id)
VALUES (1001, 1);
