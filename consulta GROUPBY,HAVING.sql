Agrupa la columna deseada

select last_name from actor; --> trate todo sin agrupar

==========

GROPU BY


select last_name from actor
group by last_name; --> lo trae agrupado 

==========

GROPU BY con funcion de agregacion

select last_name, count(*) from actor
group by last_name; --> trae todo agrupado pero tambien lo trae con la cuanta de cuantas veces se repite el last_name

==========

GROPU BY --> se agrupa con customer_id y hace la sumatoria del amount todo en la cunsulta

select
c.customer_id,
c.first_name,
c.last_name,
sum(p.amount)
from payment p
	inner join customer c on (c.customer_id = p.customer_id)
	group by c.customer_id


========================================================

HAVING --> se usa para condiciones 

select last_name, count(*) from actor
group by 1
having count(*)>3; --> la condicion trae todo lo que sea mayor a 3, si se repite mas de 3 veces lo trae


HAVING CON GRUP BY, ORDER BY

select 
c.customer_id,
c.last_name,
c.first_name,
sum(p.amount)
from payment p
	inner join customer c on (c.customer_id = p.customer_id)
    group by c.customer_id
    having sum(p.amount) < 60
    order by sum(p.amount) desc  /* une la tabla de paymant con la de customer y hace una condision para que traiga el amount que sea menor a 60
                                    y lo ordenada de manera desenciente */


