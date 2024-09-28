-- Alter Table sirve para modificar una tabla (agregar una nueva columna)

alter table agregar tabla deseada
add column nombre de la columna y agregar el tipo de valor de esa columna

=======

select * from actor;

alter table actor
add column Genero_actor char(1); --> agrega la columna genero_actor con tipo de char 1

-- Eliminar Columna desada

alter table	 actor
drop column Genero_actor --> elemina la comuna deseada 