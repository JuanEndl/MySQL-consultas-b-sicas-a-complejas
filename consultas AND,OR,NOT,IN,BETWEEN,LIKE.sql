El operador AND se usa cuando 2 condiciones queremos que sean verdaderas (que cumple con las 2 condiciones)

select * from country
where country = "argentina" and country_id = 6;


===============================================================================

El operador OR trae ambas condiciones, no importa si son verdaderas o falsas siempre trae las condiciones

select * from country
where country = 'argentina' or country_id = 7;

===============================================================================

El operador NOT no trae lo que uno quiere, (en este coso no trae el nombre action)

select * from category
where not name = 'action';

===============================================================================

El operador IN es una abrievaruta de multiples condicioes OR (va a traer las condiciones que se cumpla en una misma columna)

select * from customer
where first_name in ('linda','ELIZABETH')

==========

Busca en la tabla film en la columna special_features los "trailers" y "trailers,Deleted Scenes" tambien en la tabla rating "NC-17,G" y tambien busca que Length sea mayor a 148
 
select * from film
where special_features in ('trailers','Trailers,Deleted Scenes') and rating in ('NC-17','G') and Length > 148;

==========

Tambien se puedo sumar el NOT IN. En este caso no trae lo seleccionado trae todo en la table menos 'action','animation','children'

select * from category
where name not in ('action','animation','children');

===============================================================================

El operador BETWEEN se usa para seleccionar valores dentro de un rango (este caso trae todo lo que se encuentre en el rango de (130 y 350) y que tambien coincida con el staff_id = 2)

select * from rental
where (customer_id between 130 and 350) and staff_id = 2

==========

Tambien se puede usar para que no traer los valores en el rango deseado con el NOT

select * from payment
where amount not between 5 and 9

===============================================================================

El operador LIKE se usa para ubscar un patron especifico de una columna (en este caso busca la primera letra de first_name y de last_name )

select * from actor
where first_name like 'A%' and last_name like 'B%';

==========

esta consulta trae lo que contenga NA en cualquier posicion de la columna first_name

select * from actor
where first_name like '%NA%';

===============================================================================