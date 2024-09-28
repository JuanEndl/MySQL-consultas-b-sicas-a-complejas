Consultas Multitablas

se uso (sum), inner join, group by

-- ¿Quien ha vendido mas del Staff en agosto 2005?

select 
s.first_name as nombre,
s.last_name as apellido,
sum(amount) as 'total amount'
from staff s
	inner join payment p on (p.staff_id = s.staff_id and p.payment_date like '2005-08%')
	group by s.first_name, s.last_name

    
-- Resutlado tra todo el que haya vendido mas 

===============================================

-- hacer una lista de cada pelicula y el numero de actores que figuran en esa pelicula. "usar tablas film_actor y film"

desc film_actor;
desc actor;

select
f.title,
count(fa.actor_id) as 'camtidad de actores'
from film_actor fa
	inner join film f on (f.film_id = fa.film_id)
    group by f.title

-- muestra la cantidad de actores que se encuentran en la pelicula

===============================================

-- ¿Cuantas copias de la pelicula Hunchback Impossigle existen en el sistema de inventario?

select
f.title,
count(f.title) as 'pelicuas en el inventario'
from inventory i
	inner join film f on (f.film_id = i.film_id)
    where f.title = 'HUNCHBACK IMPOSSIBLE';
    
-- trae el conteo del iventario de la peliculas "HUNCHBACK IMPOSSIBLE"

===============================================

-- ¿Cuantas copias de la pelicula Hunchback Impossigle existen en el sistema de inventario?

select
f.title,
count(f.title) as 'pelicuas en el inventario'
from inventory i
	inner join film f on (f.film_id = i.film_id)
    where f.title = 'HUNCHBACK IMPOSSIBLE';
    
-- trae el conteo del iventario de la peliculas "HUNCHBACK IMPOSSIBLE"

===============================================

-- anotar el total pagado por cada cliente. Listar los clientes alfaberticamiente por apellido

select * from customer;
select * from payment;

select
c.first_name,
c.last_name,
sum(p.amount)
from payment p
	inner join customer c on (c.customer_id = p.customer_id)
    group by c.customer_id
    order by c.last_name asc

-- trae el total pagado de cada cliente ordenado por el apellido

===============================================