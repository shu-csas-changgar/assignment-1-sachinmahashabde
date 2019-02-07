
/* question 1*/

select first_name, last_name
from sakila.actor
where first_name = 'penelope';

/** question2*/

select first_name, last_name
from sakila.actor, sakila.film_actor, film
where actor.actor_id = film_actor.actor_id
and film_actor.film_id = film.film_id
and film.title = 'zoolander fiction';


/***q3*/

select title
from actor a, film f, film_actor fa
where a.first_name = 'jennifer' and a.last_name = 'davis'
and fa.actor_id = a.actor_id and f.film_id = fa.film_id;

/**q4*/

select title
from rental
join inventory on rental.inventory_id = inventory.inventory_id
join film on film.film_id = inventory.film_id
where rental.return_date is null and rental.customer_id = 11;





select title
from film f, category c, film_category fc
where f.film_id = fc.film_id and fc.category_id= c.category_id
and c.name = 'animation';


select amount
from payment
join rental on payment.rental_id = rental.rental_id
join inventory on rental.inventory_id = inventory.inventory_id
join film on film.film_id = inventory.film_id
and film.title = 'closer bang'
and payment.customer_id = 95;

select staff.first_name, staff.last_name
from staff
join rental on rental.staff_id = staff.staff_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
join customer on rental.customer_id = customer.customer_id
and customer.first_name = 'marie' and customer.last_name = 'turner'
and film.title = 'chainsaw uptown';
