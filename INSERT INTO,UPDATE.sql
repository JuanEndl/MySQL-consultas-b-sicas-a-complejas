
insert into nombreDeLaTabla (nombreDeLaColumna1,nombreDeLaColumna2)
values(infoAColocar1,infoAColocar2)

-- agrega informacion a la tabla

select * from city where city = 'prueba';

insert into city (city,country_id)
values('prueba','100');

/*  en insert into va la "tabla" y entre parentesis las comlumnas donde van a agregar la informacion. Despues agregar VALUES
    y entre () agregar la informacion deseada   */

===========

select * from actor;

insert into actor (first_name,last_name)
values('juan','endl'); --> agrega mi nombre a la tabla Actor

===========

select * from category;

insert into category (name)
values('especial'); --> agrega una categoria mas

==========================================================

UPDATE

update nombreDeLaTabla set  nombreDeLaColumna = "informacionDeseada"
where nombre de la comuna a modificar = 87

-- Actualizar los registros

select * from city;

update city set city = 'NEW YORk'
where country_id = 87

/*modifica la tabla City, agrega el nombre "NEW YORK" en la columna City donde el Country_id sea 87 */


===========

select * from actor;

update actor set first_name = 'juan'
where actor_id = 1 --> cambio el nombre de la tabla actor a juan donde el actor_id sea 1