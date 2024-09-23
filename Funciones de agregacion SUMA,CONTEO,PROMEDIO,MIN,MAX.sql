Funciones de agregacion Suma, Resta, promedios, maximos y minimos


SUMA 

select sum(amount)from payment;

======

SUMA de Columnas

select *from inventory;
select inventory_id + film_id + store_id from inventory;

======

CONTEO -->  trae el conteo de los registros

select count(*) from actor

======

PROMEDIO (avg) -->  saca el promedio de la Columna deseada

select avg(amount)from payment;

======

MAXIMO Y MINIMO --> trae el maximo o minimo de la columna

select max(length) from film;

select min(length) from film;