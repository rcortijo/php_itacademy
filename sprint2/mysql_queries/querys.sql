#################
# BD: tienda	#
#################
#1.Lista el nombre de todos los productos que hay en la tabla "producto".
SELECT nombre FROM producto;

#2.Lista los nombres y precios de todos los productos de la tabla "producto".
SELECT nombre, precio FROM producto;

#3.Lista todas las columnas de la tabla "producto".
SHOW COLUMNS FROM producto;

#4.Lista el nombre de los "productos", el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre, precio AS precio_euros, (precio*1.09) AS precio_usd FROM producto;

#5.Lista el nombre de los "productos", el precio en euros y el precio en dólares estadounidenses. Utiliza los siguientes sobrenombre para las columnas: nombre de "producto", euros, dólares estadounidenses.
SELECT nombre AS producto, precio AS euros, (precio*1.09) AS dolares_estadounidenses FROM producto;

#6.lista los nombres y precios de todos los productos de la tabla "producto", convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre) AS nombre, precio FROM producto;

#7.Lista los nombres y precios de todos los productos de la tabla "producto", convirtiendo los nombres a minúscula.
SELECT LOWER(nombre) AS nombre, precio FROM producto;

#8.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre, UPPER(LEFT(nombre,2)) AS caracteres FROM fabricante;

#9.Lista los nombres y precios de todos los productos de la tabla "producto", redondeando el valor del precio.
SELECT nombre, ROUND(precio) AS precio FROM producto;

#10.Lista los nombres y precios de todos los productos de la tabla "producto", truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre, TRUNCATE(precio,0) AS precio_truncado FROM producto;

#11.Lista el código de los fabricantes que tienen productos en la tabla "producto".
SELECT `codigo_fabricante` FROM `producto`;

#12.Lista el código de los fabricantes que tienen productos en la tabla "producto", eliminando los códigos que aparecen repetidos.
SELECT DISTINCT(`codigo_fabricante`) FROM `producto`;

#13.Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM `fabricante` ORDER BY nombre ASC;

#14.Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM `fabricante` ORDER BY nombre DESC;

#15.Lista los nombres de los productos ordenados, en primer lugar, por el nombre de forma ascendente y, en segundo lugar, por el precio de forma descendente.
SELECT nombre FROM `producto` ORDER BY nombre ASC, `precio` DESC;

#16.Devuelve una lista con las 5 primeras filas de la tabla "fabricante".
SELECT * FROM `fabricante` LIMIT 5;

#17.Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla "fabricante". La cuarta fila también debe incluirse en la respuesta.
SELECT *FROM fabricante LIMIT 3, 2;

#18.Lista el nombre y precio del producto más barato. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA: Aquí no podrías usar MIN(precio), necesitarías GROUP BY
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

#19.Lista el nombre y precio del producto más caro. (Utiliza solamente las cláusulas ORDER BY y LIMIT). NOTA: Aquí no podrías usar MAX(precio), necesitarías GROUP BY.
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

#20.Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
SELECT nombre FROM producto WHERE codigo_fabricante='2'

#21.Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT a.nombre, a.precio, b.nombre AS nombre_fabricante FROM `producto` a INNER JOIN `fabricante` b ON a.codigo_fabricante=b.codigo;

#22.Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordena el resultado por el nombre del fabricante, por orden alfabético.
SELECT a.nombre, a.precio, b.nombre AS nombre_fabricante FROM `producto` a INNER JOIN `fabricante` b ON a.codigo_fabricante=b.codigo ORDER BY b.`nombre` ASC;

#23.Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT a.codigo, a.nombre, b.codigo AS codigo_fabricante, b.nombre AS nombre_fabricante FROM `producto` a INNER JOIN `fabricante` b ON a.codigo_fabricante=b.codigo;

#24.Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT a.nombre, a.precio, b.nombre AS nombre_fabricante FROM `producto` a INNER JOIN `fabricante` b ON a.codigo_fabricante=b.codigo ORDER BY a.precio ASC LIMIT 1;

#25.Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT a.nombre, a.precio, b.nombre AS nombre_fabricante FROM `producto` a INNER JOIN `fabricante` b ON a.codigo_fabricante=b.codigo ORDER BY a.precio DESC LIMIT 1;

#26.Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT a.* FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE b.`nombre`='Lenovo';

#27.Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT a.* FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE b.`nombre`='Crucial' AND a.precio > 200;

#28.Devuelve una lista con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.
SELECT a.*,b.nombre AS nombre_fabricante FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE b.`nombre`='Asus' OR b.`nombre`='Hewlett-Packard' OR b.`nombre`='Seagate';

#29.Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Usando el operador IN.
SELECT a.*,b.nombre AS nombre_fabricante FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE b.`nombre` IN('Asus','Hewlett-Packard','Seagate');

#30.Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre acabe por la vocal e.
SELECT a.nombre, a.precio FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE RIGHT(b.nombre,1)='e';

#31.Devuelve un listado con el nombre y precio de todos los productos de cuyos fabricantes contenga el carácter w en su nombre.
SELECT a.nombre, a.precio FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE b.nombre LIKE '%w%';

#32.Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180 €. Ordena el resultado, en primer lugar, por el precio (en orden descendente) y, en segundo lugar, por el nombre (en orden ascendente).
SELECT a.nombre, a.precio, b.nombre AS fabricante FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante`=b.`codigo` WHERE a.precio >= 180 ORDER BY a.precio DESC, a.nombre ASC;

#33.Devuelve un listado con el código y el nombre de fabricante, sólo de aquellos fabricantes que tienen productos asociados en la base de datos.
SELECT a.codigo,a.nombre FROM fabricante a INNER JOIN producto b ON a.`codigo` = b.`codigo_fabricante` GROUP BY codigo; 

#34.Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también a aquellos fabricantes que no tienen productos asociados.
SELECT a.codigo,a.nombre AS nombre_fabricante, b.codigo AS cod_producto, b.nombre AS nombre_producto FROM fabricante a LEFT JOIN producto b ON a.`codigo` = b.`codigo_fabricante`

#35.Devuelve un listado en el que sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.
SELECT a.codigo,a.nombre AS nombre_fabricante FROM fabricante a LEFT JOIN producto b ON a.`codigo` = b.`codigo_fabricante` WHERE b.`codigo_fabricante` IS NULL;

#36.Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT a.* FROM producto a WHERE a.codigo_fabricante=(SELECT codigo FROM `fabricante` WHERE nombre='Lenovo');

#37.Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT a.* FROM producto a WHERE a.precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM `fabricante` WHERE nombre='Lenovo'));

#38.Lista el nombre del producto más caro del fabricante Lenovo.
SELECT a.nombre FROM producto a INNER JOIN fabricante f ON a.`codigo_fabricante`=f.`codigo` WHERE f.`nombre`='Lenovo' ORDER BY a.`precio` DESC LIMIT 1; 

#39.Lista el nombre del producto más barato del fabricante Hewlett-Packard.
SELECT a.nombre FROM producto a INNER JOIN fabricante f ON a.`codigo_fabricante`=f.`codigo` WHERE f.`nombre`='Hewlett-Packard' ORDER BY a.`precio` ASC LIMIT 1; 

#40.Devuelve todos los productos de la base de datos que tienen un precio mayor o igual al producto más caro del fabricante Lenovo.
SELECT *FROM producto WHERE precio >= (SELECT MAX(a.`precio`) AS precio  FROM producto a INNER JOIN `fabricante` b ON a.`codigo_fabricante`=b.`codigo` WHERE b.`nombre`='Lenovo' GROUP BY b.`nombre`);

#41.Lista todos los productos del fabricante Asus que tienen un precio superior al precio medio de todos sus productos.
SELECT *FROM producto a INNER JOIN fabricante b ON a.`codigo_fabricante` = b.codigo WHERE b.`nombre`='Asus' AND a.precio > (SELECT AVG(p.precio) FROM producto p INNER JOIN fabricante f ON p.`codigo_fabricante`=f.`codigo` WHERE f.`nombre`='Asus');

#########################
# BD: universidad	#
#########################
#1.Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos/as. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
SELECT apellido1 AS primer_apellido, apellido2 AS segundo_apellido, nombre FROM `persona` WHERE tipo='alumno';

#2.Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
SELECT nombre, CONCAT(apellido1,' ',apellido2) AS apellidos FROM persona WHERE telefono = '' OR telefono IS NULL AND tipo='alumno';

#3.Devuelve el listado de los alumnos/as que nacieron en 1999.
SELECT nombre, CONCAT(apellido1,' ',apellido2) AS apellidos FROM persona WHERE YEAR(`fecha_nacimiento`)='1999' AND tipo='alumno';;

#4.Devuelve el listado de profesores/as que no han dado de alta su número de teléfono en la base de datos y además su NIF termina en K.
SELECT nombre, CONCAT(apellido1,' ',apellido2) AS apellidos  FROM persona a INNER JOIN profesor b ON a.`id`=b.`id_profesor` WHERE a.telefono = '' OR a.telefono IS NULL AND RIGHT(a.`nif`,1)='K';

#5.Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
SELECT * FROM `asignatura` WHERE cuatrimestre='1' AND curso='3' AND id_grado='7';

#6.Devuelve un listado de los profesores/as junto con el nombre del departamento al que están vinculados/as. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por apellidos y nombre.
SELECT p.`apellido1`, p.`apellido2`, p.`nombre`, b.`nombre` AS departamento FROM profesor a INNER JOIN persona p ON a.`id_profesor`=p.`id` INNER JOIN departamento b ON a.`id_departamento`=b.`id` ORDER BY p.`apellido1`, p.`apellido2`, p.nombre;

#7.Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno/a con NIF 26902806M.
SELECT a.nombre,c.anyo_inicio,c.anyo_fin,p.nif FROM alumno_se_matricula_asignatura am INNER JOIN persona p ON p.id = am.id_alumno INNER JOIN curso_escolar c ON p.id = c.id INNER JOIN asignatura a ON am.id_asignatura = a.id AND p.nif = '26902806M';

#8.Devuelve un listado con el nombre de todos los departamentos que tienen profesores/as que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
SELECT c.nombre FROM profesor a INNER JOIN `asignatura` b ON a.`id_profesor`=b.`id_profesor` INNER JOIN `departamento` c ON c.`id`=a.`id_departamento` WHERE b.`id_grado`='4' GROUP BY c.`id`;

#9.Devuelve un listado con todos los alumnos/as que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
SELECT a.nombre,a.apellido1,a.apellido2,asig.nombre FROM persona a INNER JOIN alumno_se_matricula_asignatura am ON a.id = am.id_alumno INNER JOIN curso_escolar ce ON am.id_curso_escolar = ce.id INNER JOIN asignatura asig ON am.id_asignatura = asig.id WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;

#Resuelve las 6 siguientes consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.
#1.Devuelve un listado con los nombres de todos los profesores/as y los departamentos que tienen vinculados/as. El listado también debe mostrar aquellos profesores/as que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor/a. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y nombre.
SELECT d.nombre AS 'Departamento',per.apellido1 AS 'Primer Apellido', per.apellido2 AS 'Segundo Apellido', per.nombre AS 'Nombre Profesor',p.id_departamento FROM departamento d RIGHT JOIN profesor p ON d.id = p.id_departamento INNER JOIN persona per ON per.`id`=p.`id_profesor` ORDER BY d.nombre, per.apellido1, per.apellido2, per.nombre;

#2.Devuelve un listado con los profesores/as que no están asociados a un departamento.
SELECT per.apellido1 AS 'Apellido1',per.apellido2 AS 'Apellido2',per.nombre AS 'Nombre',d.nombre 'Departamento' FROM profesor p INNER JOIN persona per ON per.`id`=p.`id_profesor` LEFT JOIN departamento d ON p.id_departamento = d.id WHERE p.id_departamento IS NULL ORDER BY d.nombre, per.apellido1, per.apellido2, per.nombre;

#3.Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT *FROM departamento a LEFT JOIN profesor b ON a.`id`=b.`id_departamento` WHERE b.`id_departamento` IS NULL;

#4.Devuelve un listado con los profesores/as que no imparten ninguna asignatura.
SELECT p.`apellido1`,p.`apellido2`,p.`nombre` FROM profesor prof INNER JOIN persona p ON p.`id`=prof.`id_profesor` LEFT JOIN asignatura asig ON prof.`id_profesor`=asig.id_profesor WHERE prof.`id_profesor` IS NULL;

#5.Devuelve un listado con las asignaturas que no tienen un profesor/a asignado.
SELECT *FROM asignatura WHERE id_profesor IS NULL;

#6.Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
SELECT d.nombre AS 'Departamento' FROM departamento d INNER JOIN profesor p ON d.id = p.id_departamento INNER JOIN asignatura a ON p.`id_profesor` = a.id_profesor LEFT JOIN curso_escolar c ON a.curso = c.id WHERE c.id IS NULL;

#Consultas resumen:
#1.Devuelve el número total de alumnos existentes.
SELECT COUNT(a.id) AS total_alumnos FROM persona a WHERE tipo='alumno';

#2.Calcula cuántos alumnos nacieron en 1999.
SELECT COUNT(DISTINCT a.id) AS total_alumnos FROM persona a WHERE tipo='alumno' AND YEAR(a.`fecha_nacimiento`) = '1999';#

#3.Calcula cuántos/as profesores/as hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores/as que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores/as asociados y tendrá que estar ordenado de mayor a menor por el número de profesores/as.
SELECT a.nombre, COUNT(b.`id_profesor`) AS nro_profesores FROM departamento a INNER JOIN profesor b ON b.`id_departamento`=a.`id` GROUP BY a.`nombre` ORDER BY nro_profesores DESC;

#4.Devuelve un listado con todos los departamentos y el número de profesores/as que hay en cada uno de ellos. Tiene en cuenta que pueden existir departamentos que no tienen profesores/as asociados/as. Estos departamentos también deben aparecer en el listado.
SELECT a.nombre, COUNT(b.`id_profesor`) AS nro_profesores FROM departamento a LEFT JOIN profesor b ON b.`id_departamento`=a.`id` GROUP BY a.`nombre` ORDER BY nro_profesores DESC;

#5.Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tiene en cuenta que pueden existir grados que carecen de asignaturas asociadas. Estos grados también deben aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
SELECT a.nombre, COUNT(b.`id`) AS nro_asignaturas FROM grado a LEFT JOIN asignatura b ON a.`id`=b.`id_grado` GROUP BY a.nombre ORDER BY nro_asignaturas DESC;

#6.Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
SELECT a.nombre, COUNT(b.`id`) AS nro_asignaturas FROM grado a LEFT JOIN asignatura b ON a.`id`=b.`id_grado` GROUP BY a.nombre HAVING nro_asignaturas>40 ORDER BY nro_asignaturas DESC;

#7.Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos existentes para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que existen de este tipo.
SELECT b.nombre,a.tipo AS tipo_asignatura,SUM(a.`creditos`) AS creditos FROM asignatura a INNER JOIN grado b ON a.`id_grado`=b.`id` GROUP BY b.`nombre`,a.tipo;

#8.Devuelve un listado que muestre cuántos/as alumnos/as se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos/as matriculados/as.
SELECT ce.anyo_inicio AS anio_escolar, COUNT(alumno_se_matricula_asignatura.id_alumno) AS nro_matriculados FROM curso_escolar ce LEFT JOIN alumno_se_matricula_asignatura ON  ce.id = alumno_se_matricula_asignatura.id_curso_escolar GROUP BY ce.anyo_inicio ORDER BY COUNT(alumno_se_matricula_asignatura.id_alumno);

#9.Devuelve un listado con el número de asignaturas que imparte cada profesor/a. El listado debe tener en cuenta a aquellos profesores/as que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
SELECT b.`id_profesor`,a.`nombre`, a.`apellido1`, a.`apellido2`, COUNT(c.`id`) AS nro_asignaturas  FROM persona a INNER JOIN profesor b ON a.`id`=b.`id_profesor` LEFT JOIN asignatura c ON c.`id_profesor`=b.`id_profesor` GROUP BY b.`id_profesor` ORDER BY nro_asignaturas DESC;

#10.Devuelve todos los datos del alumno más joven.
SELECT a.* FROM persona a ORDER BY a.`fecha_nacimiento` DESC LIMIT 1;

#11.Devuelve un listado con los profesores/as que tienen un departamento asociado y que no imparten ninguna asignatura.
SELECT b.`id_profesor`,a.nombre,a.`apellido1`,a.`apellido2` FROM persona a INNER JOIN profesor b ON b.`id_profesor`=a.`id` INNER JOIN departamento c ON c.`id`=b.`id_departamento` LEFT JOIN asignatura d ON d.`id_profesor`=b.`id_profesor` WHERE d.`id_profesor` IS NULL;


