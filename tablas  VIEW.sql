TABLAS TEMPORALES VIEW

create view ingresos_por_genero as --> crea la tabla temporal

select
name, 
sum(amount) as SumaDeTodo
from category
	inner join film_category on (category.category_id = film_category.category_id)       --> para que funcione ejecutar todo junto
    inner join inventory on (film_category.film_id = inventory.film_id)
    inner join rental on (inventory.inventory_id = rental.inventory_id)
    inner join payment on (rental.rental_id = payment.rental_id)
    group by name
    order by sum(amount) desc limit 5; --> consulta que queres que se guarde 

===========

/*ejecutar la tabla*/

select * from ingresos_por_genero --> cada vez que se ejecuta la tabla trae los datos requeridos de la query

===========

BORRAR TABLA

DROP VIEW ingresos_por_genero --> borra la tabla en memoria