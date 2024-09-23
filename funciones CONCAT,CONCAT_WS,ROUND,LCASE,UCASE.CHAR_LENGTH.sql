FUNCION CHAR_LENGTH --> para saber la longitud de los registros de la columna


select name,char_length(name) as longitudDeCadena from category --> muestra la lingitud de los registros de la columna name 


ejemplo (char_length y having) -- > usando la funcion char_lenth con havin hago una condicion que solo me traigan los registros mayores con 38 letras

select email,char_length(email) as longitudEmail from customer
group by customer_id
having char_length(email) > 38;

===========

FUNCION CONCAT --> agrupar columnas

select *, concat(first_name, " ", first_name) as nombreYApellido from customer; --> agrupa las columnas first_name y first_name

===

FUNCION CONCAT_WS --> Forma de agrupas mas columnas 

select concat_ws(" - ", title, description, release_year ) as tituloDescripsionAño from film; --> se agrupan las columnas deseadas separadas por el guion

===========

FUNCION  ROUND --> redondea los registros (decimales a numeros redondos)

select *,round(amount,0) as redondeadoArriba from payment; --> adentro del parentesis va la columna a redondear y despues de la coma la cantidad de decimales

===========

FUNCION LCASE --> comvierte todo en minuscalas

select *, LCASE(concat(first_name, " ", last_name)) as nombrecompleto from actor;

===

FUNCION UCASE --> comvierte todo en mayusculas

select *, UCASE(concat(first_name, " ", last_name)) as nombrecompleto from actor;

