DELETE FROM contrato_automovil
WHERE id_automovil = '8';
DELETE FROM contrato_automovil
WHERE id_contrato = '5';


DELETE FROM contrato_cambios_devoluciones
WHERE garantia IS NULL;
DELETE FROM contrato_cambios_devoluciones
WHERE id_contrato > 20;


DELETE FROM contrato_renta
WHERE fecha_devolucion > '2023-01-01';
DELETE FROM contrato_renta
WHERE fecha_devolucion < '2021-01-01';


DELETE FROM contrato_venta
WHERE id_contrato > 20;
DELETE FROM contrato_venta
WHERE id_contrato = 19;


DELETE FROM cambios_devoluciones
WHERE fecha_reclamacion IS NULL;
DELETE FROM cambios_devoluciones
WHERE especificacion = 'Cambio';

DELETE FROM servicio_extra
WHERE moneda = 'USD';
DELETE FROM servicio_extra
WHERE moneda = 'EUR';


DELETE FROM departamento_funcion
WHERE id_funcion = '1';
DELETE FROM departamento_funcion
WHERE id_empleado = '8';



DELETE  FROM empleado_departamento
WHERE id_empleado = '6';
DELETE  FROM empleado_departamento
WHERE id_departamento = '7' AND id_empleado = '7';



DELETE FROM domicilio
WHERE numero = '23';
DELETE FROM domicilio
WHERE municipio = 'Gustavo A. Madero';


DELETE FROM genero
WHERE etiqueta = 'Femenino';
DELETE FROM genero
WHERE etiqueta = 'Masculino';

DELETE FROM rfc
WHERE cifras IS NULL;
DELETE FROM rfc
WHERE cifras = 'MRAC14012311031';


DELETE FROM persona
WHERE nombre_persona='Roberto';
DELETE FROM persona
WHERE id_persona>50;

DELETE FROM contrato
WHERE id_contrato>15;
DELETE FROM contrato
WHERE id_contrato = '25';

DELETE FROM automovil
WHERE id_automovil='30';
DELETE FROM automovil
WHERE id_automovil='45';


DELETE FROM metodo_pago_pago
WHERE id_pago='50';
DELETE FROM metodo_pago_pago
WHERE id_mpago='65';

DELETE FROM cliente
WHERE id_cliente='75';
DELETE FROM cliente
WHERE id_cliente='81';



DELETE FROM empleado
WHERE rol='Mecanico';
DELETE FROM empleado
WHERE noss='1998xxxxxxx';



DELETE FROM pago
WHERE estado = 'Liquido';
DELETE FROM pago
WHERE moneda = 'EUR';


DELETE FROM departamento
WHERE id_departamento = 24;
DELETE FROM departamento
WHERE id_departamento = 18;

DELETE FROM fuente_energia
WHERE tipo_combustible = 'Gasolina';
DELETE FROM fuente_energia
WHERE tipo_combustible = 'Eléctrico';


DELETE FROM color
WHERE id_color = 3;
DELETE FROM color
WHERE id_color = 4;

DELETE FROM modelo
WHERE id_modelo = 12;
DELETE FROM modelo
WHERE id_modelo = 8;


DELETE FROM servicio_extra_contrato
WHERE id_contrato = '8';
DELETE FROM servicio_extra_contrato
WHERE id_contrato = '10';

DELETE FROM funcion
WHERE nombre_funcion ='Vendedor';
DELETE FROM funcion
WHERE nombre_funcion ='Proveedor';


DELETE FROM metodo_pago
WHERE nombre_mpago ='Transferencia';
DELETE FROM metodo_pago
WHERE nombre_mpago ='Tarjeta';

DELETE FROM tamano
WHERE id_automovil ='6';
DELETE FROM tamano
WHERE id_automovil ='11';

DELETE FROM gama
WHERE id_automovil ='5';
DELETE FROM gama
WHERE id_automovil ='13';

 DELETE FROM transmision
WHERE id_automovil ='14';
DELETE FROM transmision
WHERE id_automovil ='1';




