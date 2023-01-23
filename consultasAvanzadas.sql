/*
 Realiza 4 consultas a diferentes tablas donde utilices diferentes operadores de comparación
 y diferentes tipos de JOIN
 */

 --1)
-- contratos de cambios y devoluciones, garantia, fecha de entrega y de realizacion del cliente 5 al 12
SELECT contrato_cambios_devoluciones.id_contrato,contrato_cambios_devoluciones.garantia,contrato.id_contrato,contrato.fecha_entrega,
contrato.fecha_realizacion,contrato.id_cliente
FROM contrato_cambios_devoluciones
         LEFT JOIN contrato
                   ON contrato_cambios_devoluciones.id_contrato = contrato.id_contrato
WHERE contrato.id_contrato BETWEEN 5 AND 12
ORDER BY contrato_cambios_devoluciones.id_contrato;

--2)
-- registro de clientes cuyo nombre empiece con M o su apellido paterno sea Diaz
SELECT cliente.id_cliente, persona.nombre_persona, persona.app_persona, persona.apm_persona
FROM cliente
        RIGHT JOIN persona ON cliente.id_persona = persona.id_persona
WHERE nombre_persona LIKE 'M%'
   OR apm_persona IN ('Díaz');

--3)
-- todos los automoviles cuyo precio sea mayor a 500000 con moneda mexicana
SELECT *
FROM automovil
         LEFT JOIN color c ON automovil.id_automovil = c.id_automovil
WHERE precio > '500000'
   OR moneda = 'MXN';

--4)
--gamas de automoviles en media o baja
SELECT *
FROM gama
         RIGHT JOIN automovil a ON a.id_automovil = gama.id_automovil
WHERE gama.grado_gama IN ('Media','Baja');



/*
 Realiza 4 consultas a diferentes tablas donde utilices funciones de agregación,
agrupación y diferentes tipos de JOIN.
 */

 --1)
-- conteo de bolsas de aire por numero y moneda MXN agrupadas por bolsas de aire
SELECT COUNT (*),bolsas_aire
FROM automovil
     LEFT JOIN transmision t on automovil.id_automovil = t.id_automovil
WHERE moneda = 'MXN'
GROUP BY bolsas_aire;

--2)
-- todos los departamentos contados por su departamento-funcion tales que sean de limpieza sistemas o ventas agrupados por departamento
SELECT departamento, COUNT(d.id_departamento)
FROM departamento_funcion
         RIGHT JOIN departamento d on departamento_funcion.id_departamento = d.id_departamento
WHERE departamento IN('Limpieza','Sistemas','Ventas')
GROUP BY departamento;

--3)
-- fecha de emisión mas la suma del total del pago
SELECT fecha_emision, SUM(pago.total)
FROM pago
         RIGHT JOIN (SELECT T1.id_contrato, T1.id_pago, T1.total
                     FROM pago
                              LEFT JOIN (SELECT id_contrato, id_pago, total
                                         FROM pago
                                                  NATURAL JOIN contrato) T1 ON pago.id_pago = T1.id_pago
                     WHERE T1.total BETWEEN 300000 AND 700000
                       AND estado IN ('En curso')) T2 ON T2.id_pago = pago.id_pago
GROUP BY pago.fecha_emision;

--4)
-- promedio de cada precio por transmision
SELECT tipo, precio, AVG(precio) promedio
FROM automovil
         INNER JOIN transmision t ON automovil.id_automovil = t.id_automovil
WHERE moneda = 'MXN'
GROUP BY precio, tipo, moneda;



/*
 Realiza 2 consultas que utilicen funciones de operadores de comparación, agregación,
agrupación y JOIN.
 */

 --1)
-- conteo de los modelos de todos los automoviles cuyo color empieza con G
SELECT COUNT(automovil.id_automovil) AS conteo, T1.nombre_modelo, T1.color
FROM automovil
         LEFT JOIN (SELECT color.color, m.nombre_modelo, m.id_automovil
                     FROM color
                              JOIN modelo AS m ON color.id_automovil = m.id_automovil) AS T1
                    ON automovil.id_automovil = T1.id_automovil
WHERE T1.color LIKE 'G%'
GROUP BY nombre_modelo, color;


--2)
--todos los maximos de una fecha de reclamacion para un contrato de cambios y devoluciones agrupados por fecha de reclamacion
SELECT fecha_reclamacion, MAX(cambios)
FROM (SELECT fecha_reclamacion, SUM(id_cambio_devolucion) cambios
      FROM cambios_devoluciones
      GROUP BY fecha_reclamacion) fecha1
         RIGHT JOIN contrato_cambios_devoluciones ON fecha1.cambios = contrato_cambios_devoluciones.id_cambio_devolucion
WHERE fecha_reclamacion > '2022-05-01'
GROUP BY fecha_reclamacion;


