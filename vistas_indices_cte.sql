/*
 Realiza 3 vistas que incluyan al menos 3 tablas, usando operadores de comparación,
funciones de agregación, agrupación y JOIN.
 */

 --1)
--vista de la informacion personal y datos de pago
CREATE OR REPLACE VIEW vista_1(nombre, celular, correo,
    fecha, total_pagar, tipo_cambio, monto_unidades) AS SELECT  nombre_persona,telefono,correo,T1.fecha_realizacion, T2.total, T2.moneda,
                SUM(T2.monto_unidades) OVER (PARTITION BY T2.id_pago) AS total
FROM persona
         JOIN cliente ON persona.id_persona = cliente.id_persona
         JOIN (SELECT *
               FROM cliente
                        JOIN contrato ON cliente.id_cliente = contrato.id_cliente) T1
              ON persona.id_persona = T1.id_persona
         JOIN
     (SELECT pago.id_pago, pago.monto_unidades, pago.total, pago.moneda,contrato.fecha_realizacion
      FROM pago
               JOIN contrato ON pago.id_pago = contrato.id_pago) T2 ON T1.id_pago = T2.id_pago
WHERE total > 300500 AND T2.id_pago > 3;
SELECT *
FROM vista_1;

--2)
--vista para conocer los nombres completos de las personas con un total de costo mayor a 400000
--junto con la fecha en la que realizaron un contrato
CREATE OR REPLACE VIEW vista_2(nombre, apellido1, apellido2, fecha, costo)
AS SELECT nombre_persona,app_persona,apm_persona,T1.fecha_realizacion,
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
ORDER BY total DESC;
SELECT *
FROM vista_2;

--3)
--Vista que sirve para conocer los servicios extras con costo de 3000 de la union de las tablas cliente
--contrato y servicio_extra
CREATE OR REPLACE VIEW vista_3(Servicio, Costo, Moneda, Num_persona)
AS SELECT nombre_servicio, costo, moneda, id_persona,
    COUNT(T2.nombre_servicio) OVER (ORDER BY T2.id_servicio_extra)AS conteo
FROM cliente
    JOIN contrato ON cliente.id_cliente = contrato.id_cliente
    JOIN(SELECT *
        FROM contrato
           JOIN servicio_extra_contrato ON contrato.id_contrato = servicio_extra_contrato.id_contrato) T1
        ON cliente.id_cliente = T1.id_cliente
    JOIN
    (SELECT servicio_extra.id_servicio_extra, servicio_extra.nombre_servicio, servicio_extra.costo, servicio_extra.moneda
     FROM servicio_extra
        JOIN servicio_extra_contrato ON servicio_extra.id_servicio_extra = servicio_extra_contrato.id_servicio_extra)T2 ON T1.id_servicio_extra = T2.id_servicio_extra
WHERE costo = 3000;
SELECT *
FROM vista_3;



/*
 Crea índices a los catálogos del proyecto y a las tablas que consideren necesarias.
 */

--Creacion de indices a catalogos
CREATE INDEX id_nombre_servicio ON servicio_extra(nombre_servicio);
CREATE INDEX id_nombre_funcion ON funcion(nombre_funcion);
CREATE INDEX id_nombre_departamento ON departamento(departamento);
CREATE INDEX id_nombre_pago ON metodo_pago(nombre_mpago);
CREATE INDEX id_nombre_segmento ON tamano(segmento);
CREATE INDEX id_tipo_combustible ON fuente_energia(tipo_combustible);
CREATE INDEX id_tipo_gama ON gama(grado_gama);
CREATE INDEX id_nombre_color ON color(color);
CREATE INDEX id_nombre_modelo ON modelo(nombre_modelo);
CREATE INDEX id_tipo_categoria ON modelo(categoria);
CREATE INDEX id_tipo_transmision ON transmision(tipo);
CREATE INDEX id_nombre_rol ON empleado(rol);
CREATE INDEX id_nombre_especificaion ON cambios_devoluciones(especificacion);
CREATE INDEX id_nombre_denominacion ON rfc(denominacion);
CREATE INDEX id_nombre_etiqueta ON genero(etiqueta);
--creacion de indices a tablas más utilizadas
CREATE INDEX id_nombre_persona ON persona(nombre_persona);
CREATE INDEX id_precio_automovil ON automovil(precio);



/*
 Realiza 2 CTE de tipo SELECT.
 */
--1)

--cte que crea la tabla producto a partir de servicio extra para devolver costos menores a 300
--ordenados por nombre de servicio
WITH producto AS (SELECT nombre_servicio,
                         costo,moneda
                  FROM servicio_extra)
SELECT nombre_servicio,
       costo,
       moneda
FROM producto
WHERE costo < 300
ORDER BY nombre_servicio;





--2)
--cte para caracteristicas de automoviles con precio mayor a 500000
WITH cte_automovil AS (SELECT no_puertas, bolsas_aire, no_asientos, precio
                       FROM automovil
                       ORDER BY no_puertas, bolsas_aire, no_asientos, precio)
SELECT *
FROM cte_automovil
WHERE precio > 500000.00
ORDER BY precio;


/*
 Realiza 2 CTE de tipo DELETE.
 */

--1)

--cte para eliminar la calle 95 y numero 677 de la tabla domicilio
WITH cte_eliminacalle AS(
    DELETE FROM domicilio
           WHERE
                    calle = '95' AND numero = 677
           RETURNING *
)SELECT calle, numero, colonia, municipio
 FROM cte_eliminacalle;



--2)
--cte para eliminar un auto de tipo híbrido y id específico
WITH moved_rows AS (
    DELETE
    FROM fuente_energia
    WHERE
        tipo_combustible = 'Híbrido' AND id_fuente_energia = 25
    RETURNING *
)
SELECT *
FROM moved_rows;