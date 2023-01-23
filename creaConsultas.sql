SELECT id_automovil
FROM contrato_automovil
WHERE id_contrato > 10;
SELECT id_contrato
FROM contrato_automovil
WHERE id_automovil <  9;

SELECT id_contrato_venta
FROM contrato_venta
WHERE  id_contrato < 5;
SELECT id_contrato_venta
FROM contrato_venta
WHERE  id_contrato_venta > 5;


SELECT *
FROM contrato_cambios_devoluciones
WHERE garantia = 'Válida';
SELECT *
FROM contrato_cambios_devoluciones
WHERE garantia = 'Inválida' AND id_contrato > 10;


SELECT *
FROM contrato_renta
WHERE  fecha_devolucion IS NULL;
SELECT *
FROM contrato_renta
WHERE  fecha_devolucion IS NOT NULL;


SELECT id_servicio_extra, nombre_servicio, costo
FROM servicio_extra
WHERE costo > 5000;
SELECT nombre_servicio, costo,moneda
FROM servicio_extra
WHERE id_servicio_extra = '10';


SELECT *
FROM departamento_funcion
WHERE id_funcion < 11;


SELECT id_turno, turno, id_empleado
FROM  empleado_departamento
WHERE turno = 'Matutino';
SELECT id_turno, turno, id_empleado
FROM  empleado_departamento
WHERE turno = 'Vespertino';


SELECT calle, colonia
FROM domicilio
WHERE id_domicilio > 5;
SELECT calle, colonia,municipio
FROM domicilio
WHERE municipio = 'Gustavo A. Madero';


SELECT *
FROM rfc
WHERE id_rfc > 5;
SELECT *
FROM rfc
WHERE denominacion = 'Moral';

SELECT *
FROM persona;

SELECT nombre_persona, app_persona, apm_persona
FROM persona
WHERE id_persona='1';
SELECT nombre_persona, telefono, correo
FROM persona
WHERE id_persona='4';


SELECT fecha_entrega, fecha_realizacion
FROM contrato
WHERE id_contrato='5';
SELECT fecha_entrega, id_pago
FROM contrato
WHERE id_contrato='4';

SELECT no_puertas, precio
FROM automovil
WHERE id_automovil='6';
SELECT precio, moneda
FROM automovil
WHERE id_automovil='5';

SELECT id_mpago
FROM metodo_pago_pago
WHERE id_pago='1';
SELECT id_mpago
FROM metodo_pago_pago
WHERE id_pago='4';

SELECT id_persona
FROM cliente
WHERE id_cliente='6';
SELECT id_persona
FROM cliente
WHERE id_cliente='7';

SELECT rol, departamento
FROM empleado
WHERE id_empleado='8';
SELECT rol, noss
FROM empleado
WHERE id_empleado='9';


SELECT estado, total
FROM pago
WHERE id_pago='5';
SELECT monto_unidades, moneda
FROM pago
WHERE id_pago='7';

SELECT departamento
FROM departamento
WHERE id_departamento ='10';
SELECT departamento
FROM departamento
WHERE id_departamento ='8';


SELECT fuente_energia
FROM fuente_energia
WHERE id_fuente_energia='9';
SELECT tipo_combustible
FROM fuente_energia
WHERE tipo_combustible='Híbrido';

SELECT color
FROM color
WHERE id_automovil = 3;
SELECT color
FROM color
WHERE id_color = 9;

SELECT especificacion,fecha_reclamacion
FROM cambios_devoluciones
WHERE solicitud = 'Rechazado';
SELECT id_cambio_devolucion,especificacion,fecha_reclamacion
FROM cambios_devoluciones
WHERE id_cambio_devolucion < 10;

SELECT nombre_modelo,categoria
FROM modelo
WHERE id_modelo = '5';
SELECT nombre_modelo,categoria
FROM modelo
WHERE id_modelo > 5;

SELECT id_contrato
FROM servicio_extra_contrato
WHERE id_servicio_extra < 15;
SELECT *
FROM servicio_extra_contrato
WHERE id_servicio_extra = 15;

SELECT *
FROM transmision
WHERE tipo ='Manual';
SELECT *
FROM transmision
WHERE id_automovil < 10;

SELECT *
FROM metodo_pago
WHERE nombre_mpago = 'Efectivo';
SELECT *
FROM metodo_pago
WHERE nombre_mpago = 'Cheque';


SELECT *
FROM tamano
WHERE segmento = 'Compacto';
SELECT *
FROM tamano
WHERE segmento = 'Comercial';

SELECT *
FROM gama
WHERE grado_gama = 'Alta';
SELECT *
FROM gama
WHERE grado_gama = 'Baja';


SELECT *
FROM genero
WHERE id_genero > 12;
SELECT *
FROM genero
WHERE etiqueta = 'F';

SELECT *
FROM funcion
WHERE nombre_funcion = 'Atencion a cliente';
SELECT *
FROM funcion
WHERE id_funcion > 10;