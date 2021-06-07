SELECT customer.customer_id,first_name || ' ' || last_name AS customer_name,
SUM(amount) AS total_amount, city.city ,address.district,country.country
FROM payment

INNER JOIN customer ON customer.customer_id = payment.customer_id
INNER JOIN address ON address.address_id = customer.address_id
INNER JOIN city ON city.city_id = address.city_id
INNER JOIN country ON country.country_id = city.country_id

GROUP BY customer.customer_id, first_name, last_name, city.city ,address.district,country.country
ORDER BY total_amount DESC
;

