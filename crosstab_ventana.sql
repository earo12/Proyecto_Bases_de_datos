/*
 Realiza 2 consultas a diferentes tablas donde utilices la llamada a la función CROSSTAB
con un solo parámetro.
 */

--PRIMERO LLAMAMOS A LA EXTENSION,  SOLO DEBE ''CORRERSE'' UNA VEZ, DE LO CONTRARIO MARCARÁ ERROR SI YA FUE LLAMADA ANTERIORMENTE EN LA BD:
CREATE EXTENSION tablefunc;

--El script marca 75 advertencias, pero se debe al especificar el tipo de dato que hay en cada CROSSTAB, fuera de ello funciona bien
--1)--crosstab del municipio por calle
SELECT *
FROM CROSSTAB(
'SELECT municipio, calle, colonia
FROM domicilio
ORDER BY 1,2'
    ) AS resultado(municipio VARCHAR, calle1 VARCHAR, calle2 VARCHAR, calle3 VARCHAR,
        calle4 VARCHAR, calle5 VARCHAR, calle6 VARCHAR, calle7 VARCHAR, calle8 VARCHAR,
        calle9 VARCHAR, calle10 VARCHAR, calle12 VARCHAR, calle13 VARCHAR, calle14 VARCHAR,
        calle15 VARCHAR, o74 VARCHAR, o63 VARCHAR, o70 VARCHAR, oo74 VARCHAR, o95 VARCHAR,
        o59 VARCHAR, o89 VARCHAR, o72 VARCHAR, o79 VARCHAR, oo59 VARCHAR, o92 VARCHAR, ooo59 VARCHAR,
        oo95 VARCHAR, o93 VARCHAR, ooo95 VARCHAR);

--2)--crosstab de los segmentos de tamaño por id_tamano
SELECT*
FROM CROSSTAB('SELECT segmento,id_tamano,id_automovil
FROM tamano
ORDER BY 1,2')
AS T(segmento VARCHAR, o3 INTEGER, o9 INTEGER, o10 INTEGER, o11 INTEGER, o13 INTEGER, o15 INTEGER,
    o16 INTEGER, o19 INTEGER, o22 INTEGER, o23 INTEGER, o24 INTEGER, o29 INTEGER, o30 INTEGER, o1 INTEGER,
    o4 INTEGER, o5 INTEGER, o18 INTEGER, o26 INTEGER, o2 INTEGER, o6 INTEGER, o7 INTEGER, o8 INTEGER,
    o12 INTEGER, o14 INTEGER, o20 INTEGER, o21 INTEGER, o25 INTEGER, o27 INTEGER, o28 INTEGER);


/*
 Realiza 2 consultas a diferentes tablas donde utilices la llamada a la función CROSSTAB
con dos parámetros.
 */


--1)--crosstab de las calles por municipio distintos
SELECT *
FROM CROSSTAB(
'SELECT calle, municipio, colonia
FROM domicilio
ORDER BY 1,2',
    'SELECT DISTINCT(municipio)
    FROM domicilio
    ORDER BY 1'
    ) AS resultado(calle VARCHAR, GustavoAMadero VARCHAR, Huixquilucan VARCHAR, Ixtapaluca VARCHAR,
        Iztacalco VARCHAR, Iztapala VARCHAR,Iztapalapa VARCHAR, Nezahualcoyotl VARCHAR, Tecámac VARCHAR,
        Texcoco VARCHAR, Tlahuac VARCHAR, ValledeChalco VARCHAR);

--2)--crosstab de unidades separadas por estado distinto en el que se encuentran
SELECT *
FROM CROSSTAB(
    'SELECT monto_unidades, estado, total
    FROM pago
    ORDER BY 1,2',
    'SELECT DISTINCT(estado)
    FROM pago
    order by 1') AS resultado(monto_unidades INTEGER,liquidado VARCHAR, curso VARCHAR);

/*
 Realiza 2 consultas a diferentes tablas donde utilices el operador OVER (),
 */

--1)--promedio del costo de los servicios extra
SELECT
    id_servicio_extra, nombre_servicio,costo,
    AVG(costo) OVER()
FROM servicio_extra;

--2)--Promedio del precio de los automoviles con id_automovil = 1 y id_automovil=5
SELECT
id_automovil, precio,
AVG(precio) OVER() promedio
FROM automovil
WHERE id_automovil IN (1,5);

/*
  Realiza 2 consultas donde utilices el operador OVER (PARTITION BY ).
 */

--1)--Nombres y apellidos, fecha de realización de los 3 clientes , cuyo total de compra sea mayor a 400000
SELECT  nombre_persona,app_persona,apm_persona,T1.fecha_realizacion,
                SUM(T2.monto_unidades) OVER (PARTITION BY T2.id_pago) AS total
FROM persona
         JOIN cliente ON persona.id_persona = cliente.id_persona
         JOIN (SELECT *
               FROM cliente
                        JOIN contrato ON cliente.id_cliente = contrato.id_cliente) T1
              ON persona.id_persona = T1.id_persona
         JOIN
     (SELECT pago.id_pago, pago.monto_unidades, pago.total, contrato.fecha_realizacion
      FROM pago
               JOIN contrato ON pago.id_pago = contrato.id_pago) T2 ON T1.id_pago = T2.id_pago
WHERE total > 400000
ORDER BY total DESC
LIMIT 3;

--2)--el total del monto de unidades en moneda mexicana partida por correo
SELECT pago.total, pago.moneda, T1.id_persona, pago.id_pago, pago.monto_unidades, T1.correo, ROW_NUMBER()
OVER(PARTITION BY T1.correo ORDER BY T1.correo) AS orden_correo,
    AVG(pago.total) OVER(PARTITION BY correo),
    MAX(pago.id_pago) OVER(PARTITION BY correo),
    MAX(T1.id_persona) OVER(PARTITION BY correo),
    SUM(pago.monto_unidades) OVER(PARTITION BY correo),
    COUNT(pago.moneda) OVER(PARTITION BY correo),
    COUNT(T1.correo) OVER(PARTITION BY correo)
FROM pago
        LEFT JOIN (SELECT pago.id_pago, pago.monto_unidades, pago.moneda, p.id_persona, p.correo
                   FROM pago
                        JOIN persona AS p ON pago.id_pago=p.id_persona) AS T1
                        ON pago.id_pago=T1.id_pago
WHERE T1.moneda='MXN';


/*
 Realiza 2 consultas donde utilices el operador OVER (ORDER BY )
 */

--1) uso del operador over(order by)
SELECT T1.nombre_modelo, T1.tipo, COUNT(automovil.id_automovil)  OVER(ORDER BY automovil.id_automovil ) AS conteo
FROM automovil
         LEFT JOIN (SELECT transmision.tipo, m.nombre_modelo, m.id_automovil
                     FROM transmision
                              JOIN modelo AS m ON transmision.id_automovil = m.id_automovil) AS T1
                    ON automovil.id_automovil = T1.id_automovil
WHERE T1.tipo LIKE 'C%';


--2)--conteo del costo por servicio extra
SELECT
    id_servicio_extra, nombre_servicio,costo,
    COUNT(*) OVER(ORDER BY nombre_servicio )
FROM servicio_extra;
