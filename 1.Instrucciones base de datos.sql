Instrucciones base de datos

select * from sakila.actor ---> busca en la base de datos "sekila" la tabla "actor"
	
=============================================================


select

a.first_name as Nombre, ---> al colocarle "as" seguido de un nombre la columna se le cambia el nombre por el solicitado
a.last_name as Apellido

 from actor a
 
==========================================================================================================================

select distinct   ---> el "distinct" funciona para traer los datos unicos y no duplicados

(store_id) 

from customer 


==========================================================================================================================
 
select

*

from country

order by country desc  ---> el "order by" ordena la tabla puede ser de Acendenter o Desendente (ASC) o (DESC)

---

select

*

from customer c

order by c.first_name asc ---> en este caso ordena por nombre en ascendente

---

select distinct

(amount)

From payment p

order by p.amount asc ---> saber cual es la cantidad mas baja o alta de la tabla amount

==========================================================================================================================

Mayor o menor con el where "< >"

select
*
from inventory i 

where i.film_id > 50; ---> trae los film_id que son mayores a 50

==========================================================================================================================

distinto con el where "!=" | "<>"

select
*
from staff s

where staff_id != 2; ---> trae todo menos el numero deseado 