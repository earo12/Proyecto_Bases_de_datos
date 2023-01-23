UPDATE persona
SET telefono='1554234565'
WHERE nombre_persona='Mauricio';
UPDATE persona
SET correo='linda_09@gmail.com'
WHERE nombre_persona='Linda';


UPDATE contrato
SET fecha_entrega= '2022-07-20'
WHERE id_contrato='4';
UPDATE contrato
SET fecha_entrega= '2022-06-27'
WHERE id_contrato='6';


UPDATE automovil
SET precio= '400000'
WHERE id_automovil='2';
UPDATE automovil
SET precio= '245000'
WHERE id_automovil='12';

UPDATE metodo_pago_pago
SET id_mpago='2'
WHERE id_pago='3';
UPDATE metodo_pago_pago
SET id_mpago='3'
WHERE id_pago='3';


UPDATE contrato_automovil
SET id_automovil = '9'
WHERE id_contrato = '10';
UPDATE contrato_automovil
SET id_automovil = '12'
WHERE id_contrato = '11';

UPDATE servicio_extra
SET nombre_servicio = 'Mantenimiento'
WHERE costo = '300';
UPDATE servicio_extra
SET nombre_servicio = 'Seguro'
WHERE id_servicio_extra = '2';


UPDATE servicio_extra_contrato
SET id_contrato = '10'
WHERE id_contrato = '1';
UPDATE servicio_extra_contrato
SET id_contrato = '1'
WHERE id_contrato = '10';

UPDATE departamento_funcion
SET id_funcion = '3'
WHERE id_empleado = '5';
UPDATE departamento_funcion
SET id_empleado = '8'
WHERE id_funcion = '3';


UPDATE cliente
Set id_persona='2'
WHERE id_cliente='1';
UPDATE cliente
Set id_persona='3'
WHERE id_cliente='2';

UPDATE empleado
SET rol='Contador'
WHERE id_empleado='1';
UPDATE empleado
SET departamento='Finanzas'
WHERE id_empleado='1';

UPDATE empleado_departamento
SET turno = 'Matutino'
WHERE id_empleado = '2';
UPDATE empleado_departamento
SET turno = 'Vespertino'
WHERE id_empleado = '15';


UPDATE empleado
SET rol = 'Contador'
WHERE rol = 'Gerente';
UPDATE empleado
SET noss = '1341xxxxxxx'
WHERE noss = '1361xxxxxxx';

UPDATE  domicilio
SET calle = 'Calle 15'
WHERE id_persona = '15';
UPDATE  domicilio
SET calle = 'Calle 14'
WHERE id_domicilio = '14';


UPDATE rfc
SET cifras = 'MLMA12345671103'
WHERE id_rfc = '4';
UPDATE  rfc
SET cifras = 'ALKA470929019'
WHERE id_rfc = '2';


UPDATE departamento
SET departamento = 'Ventas'
WHERE id_departamento = '11';
UPDATE departamento
SET departamento = 'Limpieza'
WHERE id_departamento = '6';


UPDATE fuente_energia
SET tipo_combustible = 'Gasolina'
WHERE  id_fuente_energia= 11;
UPDATE fuente_energia
SET tipo_combustible = 'Eléctrico'
WHERE  id_fuente_energia= 3;

UPDATE color
SET color = 'Blanco'
WHERE id_color = '2';
UPDATE color
SET color = 'Gris'
WHERE id_color = '5';

UPDATE modelo
SET nombre_modelo = 'Sentra'
WHERE id_modelo = '15';
UPDATE modelo
SET nombre_modelo = 'Sentra'
WHERE id_modelo = '12';


UPDATE funcion
SET nombre_funcion = 'Gerente'
WHERE nombre_funcion = 'Vendedor';
UPDATE funcion
SET nombre_funcion= 'Mecanico'
WHERE nombre_funcion = 'Proveedor';

UPDATE metodo_pago
SET id_mpago = '4'
WHERE nombre_mpago = 'Tarjeta de Crédito';
UPDATE metodo_pago
SET id_mpago = '6'
WHERE nombre_mpago = 'Tarjeta de Debito';


UPDATE pago
SET moneda = 'MXN'
WHERE moneda = 'USD';
UPDATE pago
SET estado = 'En curso'
WHERE estado = 'Liquidado';



UPDATE tamano
SET id_tamano = '4'
WHERE segmento = 'compacto';
UPDATE tamano
SET id_tamano = '6'
WHERE segmento = 'familiar';

UPDATE gama
SET id_automovil = '11'
WHERE grado_gama = 'Baja';
UPDATE gama
SET id_automovil = '8'
WHERE grado_gama = 'Alta';


UPDATE transmision
SET tipo = 'Manual'
WHERE  tipo = 'Automática';
UPDATE transmision
SET id_automovil = '8'
WHERE tipo = 'Manual';


UPDATE contrato_cambios_devoluciones
SET garantia = 'Inválida'
WHERE garantia = 'Válida';
UPDATE contrato_cambios_devoluciones
SET id_contrato = '5'
WHERE id_contrato = '1';


UPDATE  contrato_renta
SET hora_devolucion = '13:00:00'
WHERE id_contrato = '1';
UPDATE  contrato_renta
SET hora_devolucion = '15:00:00'
WHERE id_contrato = '14';

UPDATE cambios_devoluciones
SET especificacion = 'Cambio'
WHERE  especificacion = 'Devolución';
UPDATE cambios_devoluciones
SET especificacion = 'Devolución'
WHERE  especificacion = 'Cambio';

UPDATE genero
SET etiqueta = 'M'
WHERE etiqueta = 'F';
UPDATE genero
SET etiqueta = 'F'
WHERE etiqueta = 'M';

UPDATE contrato_venta
SET id_contrato = '10'
WHERE  id_contrato = '9';
UPDATE contrato_venta
SET id_contrato = '11'
WHERE  id_contrato = '10';
