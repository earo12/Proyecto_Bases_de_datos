/*
1) REALIZA 5 CONSULTAS A DIFERENTES TABLAS
DONDE UTILICES FUNCIONES DE PAGINACIÓN:
 */

 --PRIMERA CONSULTA:
SELECT correo, nombre_persona
FROM persona
ORDER BY correo
OFFSET 3 FETCH NEXT 10 ROWS ONLY;

--SEGUNDA CONSULTA:
SELECT id_servicio_extra, nombre_servicio, costo
FROM servicio_extra
WHERE id_servicio_extra < 8
ORDER BY 3
OFFSET 3
LIMIT 8;

--TERCERA CONSULTA:
SELECT id_automovil,no_puertas
FROM automovil
ORDER BY id_automovil
OFFSET 5 FETCH NEXT 12 ROWS ONLY;


--CUARTA CONSULTA:
SELECT id_servicio_extra, nombre_servicio, costo
FROM servicio_extra
WHERE costo < 5000
ORDER BY 3
OFFSET 3
LIMIT 8;

--QUINTA CONSULTA:
SELECT id_empleado, departamento
FROM empleado
ORDER BY id_empleado
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;


/*
 2) REALIZA 5 CONSULTAS QUE CONECTEN TABLAS DONDE UTILICES
 FUNCIONES DE COMPOSICIÓN (UTILIZA DIFERENTES TIPOS DE JOIN)
 */

 --PRIMERA CONSULTA:
SELECT color.id_color,color.id_automovil,automovil.id_automovil
FROM color
    INNER JOIN automovil ON color.id_automovil = automovil.id_automovil;


--SEGUNDA CONSULTA:
SELECT cliente.id_cliente, persona.nombre_persona, persona.app_persona
FROM cliente JOIN persona ON cliente.id_persona = persona.id_persona
WHERE id_cliente >10;

--TERCERA CONSULTA
SELECT domicilio.id_persona, calle, numero, cliente.id_persona
FROM domicilio RIGHT JOIN cliente ON domicilio.id_persona = cliente.id_persona
WHERE calle IS NULL;



--CUARTA CONSULTA
SELECT *
FROM contrato INNER JOIN contrato_automovil ON contrato.id_contrato = contrato_automovil.id_contrato
WHERE fecha_realizacion < ' 2022-04-10';

--QUINTA CONSULTA
SELECT contrato_cambios_devoluciones.id_contrato,
       contrato_cambios_devoluciones.garantia,
       contrato.id_contrato,
       contrato.fecha_entrega,
       contrato.fecha_realizacion,
       contrato.id_cliente
FROM contrato_cambios_devoluciones
         LEFT JOIN contrato
                   ON contrato_cambios_devoluciones.id_contrato = contrato.id_contrato
ORDER BY contrato_cambios_devoluciones.id_contrato;


/*
 3) REALIZA 2 CONSULTAS DONDE UTILICES JOIN CON TABLAS RENOMBRADAS
 */

--PRIMERA CONSULTA
SELECT p.id_pago, p.moneda,p.estado,p.fecha_emision,p.total, c.id_pago, c.fecha_entrega,c.fecha_realizacion
FROM pago AS p
LEFT JOIN contrato AS c ON p.id_pago = c.id_pago
WHERE fecha_emision < '2022-05-15';

--SEGUNDA CONSULTA
SELECT a.id_automovil, a.precio, m.nombre_modelo, m.categoria,m.id_automovil
FROM automovil AS a
         JOIN modelo AS m ON a.id_automovil = m.id_automovil
WHERE categoria = 'Ejecutivo'
  AND precio > 50000;