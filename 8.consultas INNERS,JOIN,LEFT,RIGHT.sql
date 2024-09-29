Tipos de jOIN

INNER jOIN -->  tiene que tener un comun (una llave)

En esta consulta trae todo lo que machea en las 2 tablas

select f.title, f.description, 
f.release_year, 
l.name 
    from film f
    inner join language l on (l.language_id = f.language_id)

====

select
a.address as Dirreccion, 
c.city as Cuidad 
    from address a
    inner join city c on (c.city_id = a.city_id)

====================

LEFT jOIN --> mantener los datos de la tabla 1 y los quiero unir con la tabla 2

En esta consulta trae todo lo que se encuentra en la tabla "Customer" y si encuentra algo en la tabla "Actor"

select 
c.customer_id,
c.first_name,
c.last_name,
a.actor_id,
a.first_name,
a.last_name
	from customer c
	left join actor a on(a.last_name = c.last_name)

====================

RIGHT jOIN -->  mantener los datos de la tabla 2 y los quiero unir con la tabla 1

En esta consulta trae todo lo que se encuentra en la tabla "Actor" y si encuentra algo en la tabla "Customer"

select 
c.customer_id,
c.first_name,
c.last_name,
a.actor_id,
a.first_name,
a.last_name
	from customer c
	right join actor a on(a.last_name = c.last_name);