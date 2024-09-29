FUNCION CASE --> SIRVE PARA SEGMENTAR MAS LA INFO O AGREGARLE UNA TABLA Y DARLE UN RESULTADO A LA CONSULTA

select
address,
address2,
	case
		when address2 is null then "Sin Direccion 2"
		else "Tiene Direccion"
    end as comentario
 from address; --> en este caso el CASE decide si no tiene dirrecion o si y lo agrega en una columna que se llama cometario

 ========

select
payment_id,
amount,
	case 
		when amount < 1 then "bajo"
		when amount > 1 between 1 and 3 then "medio"
		else "alto"
	end as comentario
from payment
order by amount desc; --> en esta consulta agrega una columna que se llama comentarios y decide si el amount se encuntra "bajo","medio","alto"

=============================================================
EJEMPLO ECHO.

select
title,
round(rental_rate,0),
	case
		when rental_rate < 1 then "Peli Mala"
        when rental_rate between 1 and 3 then "Peli Buena"
        else "Peli Excelente"
	end as comentario
from film;  /*en esta consulta agrega una columna que se llama comentarios y decide si el RENTAL_RATE se encuntra "Peli Mala","Peli Buena","Peli Excelente"
              tambien el renta_rate lo coloque con decimal 0   */