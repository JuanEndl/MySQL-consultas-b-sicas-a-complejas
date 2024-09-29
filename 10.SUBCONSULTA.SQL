SUB CONSULTAS --> Son querys dentro de otro query (una instrcuccion select anidada en otra instruccion select)

select 
title
from film
	where title like 'k%' or title like 'Q%'
    and title in 
    (
		select title from film where language_id in
		(
			select language_id from language where name = 'english'
        )
    ); --> esta consulta y subconsulta busca que el nombre empiece con K o con Q y que ademas busque el lenguaje english

===================

otro EJEMPLO

select
title
from film
	where film_id in
    (
		select film_id from film_category where category_id in
        (
			select category_id from category where name = 'family'
        )
    ); --> la consulta trae las peliculas que se encuentren en una categoria "familia"

============================

ejercicio

select
concat(first_name, " ", last_name) as nombreCompleto,
email
from customer
	where customer_id in 
    (
		select customer_id from rental 
        where inventory_id in 
        (
			select inventory_id from inventory 
            where film_id in
				(
					select film_id from film_category
                    where category_id in 
						(
							select category_id from category
                            where category_id = 1
						)
				)
        )
    ); --> esta consulta trae el nombre completo y el email de cada persona que alquilo una pelicula de accion
