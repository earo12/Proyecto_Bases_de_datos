/*
 PRIMERO EMPEZAMOS CON LAS QUE NO TIENEN LLAVE FORANEA
 */
--tabla genero
INSERT INTO genero(id_genero,etiqueta)
VALUES  (1,'F');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (2,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (3,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (4,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (5,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (6,'F');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (7,'F');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (8,'F');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (9,'F');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (10,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (11,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (12,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (13,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (14,'M');
INSERT INTO genero(id_genero,etiqueta)
VALUES  (15,'M');

--tabla empleado
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (1,'Vendedor','1260xxxxxxx','Ventas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (2,'Gerente','1361xxxxxxx','Administración');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (3,'Contador','1462xxxxxxx','Finanzas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (4,'Conserje','1664xxxxxxx','Limpieza');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (5,'Proveedor','2977xxxxxxx','Producción');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (6,'Proveedor','4088xxxxxxx','Producción');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (7,'Vendedor','1866xxxxxxx','Ventas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (8,'Vendedor','1267xxxxxxx','Ventas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (9,'Ingeniero','4694xxxxxxx','Sistemas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (10,'Ingeniero','2068xxxxxxx','Sistemas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (11,'Abogado','2270xxxxxxx','Juridico');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (12,'Conserje','3886xxxxxxx','Limpieza');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (13,'Publicista','2169xxxxxxx','Mercadotecnia');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (14,'Contador','3179xxxxxxx','Finanzas');
INSERT INTO empleado(id_empleado, rol, noss, departamento)
VALUES (15,'Vendedor','2371xxxxxxx','Ventas');

--tabla metodo_pago
INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(1,'Efectivo' );

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(2,'Cheque');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(3,'Efectivo' );

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(4,'Cheque');


--ALTER TABLE metodo_pago ALTER COLUMN nombre_mpago SET DATA TYPE VARCHAR(32);
INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(5,'Transferencia electrónica');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(6,'Cheque');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(7,'Tarjeta de crédito');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(8,'Tarjeta de débito');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(9,'Transferencia electrónica');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(10,'Pagos móviles');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(11,'Cheque');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(12,'Tarjeta de crédito');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(13,'Tarjeta de débito');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(14,'Transferencia electrónica');

INSERT INTO metodo_pago( id_mpago,
    nombre_mpago)
VALUES(15,'Pagos móviles');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(1,'Seguro',8500,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(2,'Mantenimiento',3435,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(3,'Limpieza',1000,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(4,'Revisión batería',300,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(5,'Limpieza',900,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(6,'Mantenimiento',4000,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(7,'Limpieza',300,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(8,'Mantenimiento',800,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(9,'Seguro',1500,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(10,'Limpieza',200,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(11,'Mantenimiento',700,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(12,'Seguro',3000,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(13,'Mantenimiento',100,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(14,'Limpieza',500,'MXN');

INSERT INTO servicio_extra( id_servicio_extra, nombre_servicio, costo, moneda)
VALUES(15,'Mantenimiento',3000,'MXN');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(1,'Devolución','2022-09-04','Aceptado','Tiempo');



INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(2,'Cambio','2022-04-21','Rechazado','Vencido');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(3,'Devolución','2022-05-23','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(4,'Cambio','2022-05-30','Rechazado','Vencido');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(5,'Devolución','2022-06-07','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(6,'Devolución','2022-07-07','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(7,'Cambio','2022-06-30','Rechazado','Vencido');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(8,'Cambio','2022-09-22','Rechazado','Vencido');


INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(9,'Devolución','2022-08-07','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(10,'Devolución','2022-07-10','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(11,'Devolución','2022-10-09','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(12,'Devolución','2022-02-07','Aceptado','Tiempo');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(13,'Cambio','2022-06-01','Rechazado','Vencido');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(14,'Cambio','2022-03-03','Rechazado','Vencido');

INSERT INTO cambios_devoluciones(id_cambio_devolucion,
    especificacion,
    fecha_reclamacion,
    solicitud,
    plazo_reclamacion)
VALUES(15,'Cambio','2022-10-10','Rechazado','Vencido');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(1,5,7,5,604900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(2,4,6,5,3029000,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(3,5,6,5,245900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(4,5,6,5,3969000,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(5,4,4,5,691900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(6,5,8,5,481900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(7,4,6,5,375900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(8,5,6,5,453900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(9,4,6,12,542900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(10,3,6,2,800900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(11,4,8,5,999900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(12,5,6,7,780.90000,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(13,2,6,2,2791600,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(14,2,6,2,961900,'MXN');

INSERT INTO automovil(id_automovil,
    no_puertas,
    bolsas_aire,
    no_asientos,
    precio,
    moneda)
VALUES(15,5,6,5,261900,'MXN');

--tabla departamento
INSERT INTO departamento( id_departamento, departamento)
VALUES(1,'Ventas');
INSERT INTO departamento( id_departamento, departamento)
VALUES(2,'Administración');
INSERT INTO departamento( id_departamento, departamento)
VALUES(3,'Finanzas');
INSERT INTO departamento( id_departamento, departamento)
VALUES(4,'Limpieza');
INSERT INTO departamento( id_departamento, departamento)
VALUES(5,'Limpieza');
INSERT INTO departamento( id_departamento, departamento)
VALUES(6,'Ventas');
INSERT INTO departamento( id_departamento, departamento)
VALUES(7,'Producción');
INSERT INTO departamento( id_departamento, departamento)
VALUES(8,'Producción');
INSERT INTO departamento( id_departamento, departamento)
VALUES(9,'Sistemas');
INSERT INTO departamento( id_departamento, departamento)
VALUES(10,'Mercadotecnia');
INSERT INTO departamento( id_departamento, departamento)
VALUES(11,'Juridico');
INSERT INTO departamento( id_departamento, departamento)
VALUES(12,'Producción');
INSERT INTO departamento( id_departamento, departamento)
VALUES(13,'Producción');
INSERT INTO departamento( id_departamento, departamento)
VALUES(14,'Sistemas');
INSERT INTO departamento( id_departamento, departamento)
VALUES(15,'Mercadotecnia');

--tabla pago
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(1,425700,'MXN','2022-04-14','Liquidado',425600);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(2,24000,'USD','2022-04-14','En curso',425600);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(3,432600,'MXN','2022-04-15','En curso',24500);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(4,432600,'MXN','2022-04-16','En curso',432600);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(5,23750,'USD','2022-04-17','Liquidado',24000);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(6,21800,'USD','2022-04-17','En curso',22000);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(7,398600,'MXN','2022-04-25','En curso',398600);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(8,456200,'MXN','2022-05-06','En curso',456200);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(9,425700,'MXN','2022-05-09','En curso',26700);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(10,26700,'USD','2022-05-10','Liquidado',410400);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(11,25000,'USD','2022-05-10','En curso',25000);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(12,415300,'MXN','2022-05-18','En curso',415200);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(13,321800,'MXN','2022-05-25','Liquidado',321800);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(14,238900,'MXN','2022-05-29','En curso',240000);
INSERT INTO pago( id_pago, monto_unidades,moneda,fecha_emision,estado,total)
VALUES(15,19000,'USD','2022-06-02','Liquidado',19000);


INSERT INTO rfc(id_rfc,denominacion,cifras) VALUES(1, 'Físca','GSSF800229876');
INSERT INTO rfc VALUES(2, 'Físca', 'ALCA470929019');
INSERT INTO rfc VALUES(3, 'Físca','MELM392894736');
INSERT INTO rfc VALUES(4, 'Físca','MELM392894736');
INSERT INTO rfc VALUES(5, 'Físca', 'CEDS893020856');
INSERT INTO rfc VALUES(6, 'Moral', 'APCJOW02866' );
INSERT INTO rfc VALUES(7, 'Físca','JFDI7584392086');
INSERT INTO rfc VALUES(8, 'Físca', 'JLOS758432903');
INSERT INTO rfc VALUES(9, 'Físca', 'PALH800229876');
INSERT INTO rfc VALUES(10, 'Físca', 'DJSK338830025 ');
INSERT INTO rfc VALUES(11, 'Físca', 'RDSOJ87450989');
INSERT INTO rfc VALUES(12, 'Físca', 'CASFKOKF97E2');
INSERT INTO rfc VALUES(13, 'Físca', 'EFSFNKND0877');
INSERT INTO rfc VALUES(14, 'Físca', 'MRACOE787771');
INSERT INTO rfc VALUES(15, 'Físca', 'HCOW73652311');


INSERT INTO funcion( id_funcion,nombre_funcion) VALUES(1, 'Gerente');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(2, 'Vendedor');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(3, 'Atencion a cliente');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(4, 'Mecanico');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(5, 'Proveedor');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(6, 'Servicio de limpieza');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(7, 'Contabilidad');
INSERT INTO funcion(id_funcion,nombre_funcion)VALUES(8, 'Desarrollo de plan de produccion');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(9, 'Supervisión');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(10, 'Asesor');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(11, 'Recepcionista');
INSERT INTO funcion( id_funcion,nombre_funcion) VALUES(12, 'Estrategia de mercado');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(13, 'Gestion de capital');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(14, 'Gestion de clientes');
INSERT INTO funcion(id_funcion,nombre_funcion) VALUES(15, 'Apoyo legal');


/*
 LUEGO CREAMOS LAS QUE TIENEN 1 LLAVE FORANEA
 */
--tabla metodo_pago_pago
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (1,1);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (2,2);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (3,3);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (4,4);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (5,5);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (6,6);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (7,7);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (8,8);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (9,9);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (10,10);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (11,11);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (12,12);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (13,13);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (14,14);
INSERT INTO metodo_pago_pago(id_pago, id_mpago)
VALUES (15,15);

--tabla tamano
INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(1,'Compacto',1);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(2,'Familiar',2);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(3,'Comercial',3);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(4,'Compacto',4);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(5,'Compacto',5);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(6,'Familiar',6);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(7,'Familiar',7);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(8,'Familiar',8);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(9,'Comercial',9);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(10,'Comercial',10);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(11,'Comercial',11);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(12,'Familiar',12);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(13,'Comercial',13);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(14,'Familiar',14);

INSERT INTO tamano( id_tamano,
    segmento, id_automovil)
VALUES(15,'Comercial',15);

--tabla fuente_energia
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(1,'Híbrido',1);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(2,'Gasolina',2);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(3,'Eléctrico',3);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(4,'Híbrido',4);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(5,'Gasolina',5);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(6,'Eléctrico',6);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(7,'Híbrido',7);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(8,'Gasolina',8);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(9,'Eléctrico',9);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(10,'Híbrido',10);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(11,'Híbrido',11);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(12,'Gasolina',12);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(13,'Eléctrico',13);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(14,'Híbrido',14);
INSERT INTO fuente_energia(id_fuente_energia,
                           tipo_combustible,
                           id_automovil)
VALUES(15,'Híbrido',15);

--tabla gama
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (1,'Alta',1);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (2,'Media',2);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (3,'Baja',3);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (4,'Alta',4);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (5,'Alta',5);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (6,'Media',6);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (7,'Baja',7);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (8,'Alta',8);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (9,'Media',9);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (10,'Baja',10);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (11,'Alta',11);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (12,'Alta',12);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (13,'Media',13);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (14,'Baja',14);
INSERT INTO gama(id_gama, grado_gama, id_automovil)
VALUES (15,'Alta',15);

--tabla color
INSERT INTO color(id_color, color, id_automovil)
VALUES (1,'Blanco',1);
INSERT INTO color(id_color, color, id_automovil)
VALUES (2,'Negro',2);
INSERT INTO color(id_color, color, id_automovil)
VALUES (3,'Rojo',3);
INSERT INTO color(id_color, color, id_automovil)
VALUES (4,'Gris',4);
INSERT INTO color(id_color, color, id_automovil)
VALUES (5,'Azul',5);
INSERT INTO color(id_color, color, id_automovil)
VALUES (6,'Rojo',6);
INSERT INTO color(id_color, color, id_automovil)
VALUES (7,'Azul',7);
INSERT INTO color(id_color, color, id_automovil)
VALUES (8,'Negro',8);
INSERT INTO color(id_color, color, id_automovil)
VALUES (9,'Negro',9);
INSERT INTO color(id_color, color, id_automovil)
VALUES (10,'Blanco',10);
INSERT INTO color(id_color, color, id_automovil)
VALUES (11,'Rojo',11);
INSERT INTO color(id_color, color, id_automovil)
VALUES (12,'Blanco',12);
INSERT INTO color(id_color, color, id_automovil)
VALUES (13,'Gris',13);
INSERT INTO color(id_color, color, id_automovil)
VALUES (14,'Azul',14);
INSERT INTO color(id_color, color, id_automovil)
VALUES (15,'Gris',15);


--tabla modelo
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (1,'X-trail','Deportivo',1);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (2,'Versa','Ejecutivo',2);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (3,'March','Mini',3);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (4,'Kicks','Camioneta',4);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (5,'Altima','Ejecutivo',5);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (6,'Frontier','Todo terreno',6);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (7,'Sentra','Ejecutivo',7);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (8,'Townstar','Furgoneta',8);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (9,'NV350 Urvan','Furgoneta',9);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (10,'300ZX','Deportivo',10);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (11,'V6 Pro-4x','Todo terreno',11);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (12,'Pathfinder','Camioneta',12);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (13,'Gt-r','Lujo',13);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (14,'370z','Deportivo',14);
INSERT INTO modelo(id_modelo, nombre_modelo, categoria, id_automovil)
VALUES (15,'V-drive','Ejecutivo',15);

INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (1,'Manual',1);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (2,'Automática',2);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (3,'Doble embrague',3);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (4,'Continuamente variable',4);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (5,'Doble embrague',5);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (6,'Manual',6);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (7,'Automática',7);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (8,'Automática',8);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (9,'Manual',9);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (10,'Continuamente variable',10);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (11,'Manual',11);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (12,'Manual',12);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (13,'Automática',13);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (14,'Manual',14);
INSERT INTO transmision(id_transmision, tipo, id_automovil)
VALUES (15,'Automática',15);


INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (1,'Linda Alejandra','Barco','Vázquez',1135671447,'linda_vb@gmail.com',1,1);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (2,'Mauricio','Diaz','Martinez',1245780214,'mauricio_dm@gmail.com',2,2);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                     telefono, correo, id_genero, id_rfc)
VALUES (3,'Jeshua','Romero',1415270407,'jeshua_rg@gmail.com',3,3);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (4,'Eduardo Adriel','Romero','Obispo',1015271211,'eduardo_ro@gmail.com',4,4);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (5,'José Ángel','Soto','Reyes',1421601100,'jose_sr@gmail.com',5,5);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    telefono, correo, id_genero, id_rfc)
VALUES (6,'Paulina','Buendía',1205112110,'paulina_uc@gmail.com',6,6);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    telefono, correo, id_genero, id_rfc)
VALUES (7,'Jacqueline','Valencia',1010171417,'jacqueline_vr@gmail.com',7,7);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                     telefono, correo, id_genero, id_rfc)
VALUES (8,'Danielle','Johnson',1409871122,'dannielle_j@gmail.com',8,8);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (9,'Laura Renata','Villavisana','Vilchis',1555171747,'laura_vv@gmail.com',9,9);


INSERT INTO persona(id_persona, nombre_persona, app_persona,
                     telefono, correo, id_genero, id_rfc)
VALUES (10,'John','Carlson',1111474441,'john_c@gmail.com',10,10);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (11,'Ricardo','Rosas','Villa',1115374407,'ricardo_rv@gmail.com',11,11);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (12,'Efraín','Ramos','Hernan',1125272343,'efrain_rh@gmail.com',12,12);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (13,'Carlos','Méndez','Lango',1122674568,'carlos_ml@gmail.com',13,13);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                    apm_persona, telefono, correo, id_genero, id_rfc)
VALUES (14,'Marco','Puc','Meneces',1127778809,'marco_pm@gmail.com',14,14);
INSERT INTO persona(id_persona, nombre_persona, app_persona,
                     telefono, correo, id_genero, id_rfc)
VALUES (15,'Héctor','Carmona',1415171111,'hector_c@gmail.com',15,15);


INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (1,'Calle 1',23,'Jardines del Sol', 'Huixquilucan',1);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (2,'Calle 2',24,'Valle del Pedregal', 'Tecámac',2);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (3,'Calle 3',25,'Jardines del Real', 'Texcoco',3);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (4,'Calle 4',26,'Niños Héroes', 'Valle de Chalco',4);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (5,'Calle 5',27,'Americas', 'Valle de Chalco',5);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (6,'Calle 6',28,'Del Carmen', 'Valle de Chalco',6);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (7,'Calle 7',29,'El Caracol', 'Ixtapaluca',7);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (8,'Calle 8',30,'Acatitla de Zaragoza', 'Iztapalapa',8);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (9,'Calle 9',31,'Aculco', 'Iztapalapa',9);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (10,'Calle 10',32,'Maravillas', 'Nezahualcoyotl',10);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (11,'Calle 11',33,'Americas', 'Valle de Chalco',11);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (12,'Calle 12',34,'Niños Heroes', 'Valle de Chalco',12);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (13,'Calle 13',35,'Acatitla de Zaragoza', 'Iztapalapa',13);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (14,'Calle 14',36,'Jardines de Morelos', 'Iztapalapa',14);
INSERT INTO domicilio(id_domicilio, calle, numero, colonia, municipio, id_persona)
VALUES (15,'Calle 15',37,'Privada de la Rosa', 'Gustavo A. Madero',15);


INSERT INTO cliente(id_cliente, id_persona)
VALUES (1,1);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (2,2);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (3,3);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (4,4);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (5,5);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (6,6);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (7,7);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (8,8);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (9,9);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (10,10);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (11,11);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (12,12);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (13,13);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (14,14);
INSERT INTO cliente(id_cliente, id_persona)
VALUES (15,15);


--tabla contrato
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (1,'2022-06-25','2022-04-02',1,1,1);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (2,'2022-06-13','2022-04-12',2,7,2);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (3,'2022-06-01','2022-04-13',3,7,3);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (4,'2022-06-20','2022-04-15',4,8,4);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (5,'2022-05-08','2022-04-18',5,1,5);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (6,'2022-05-27','2022-04-25',6,1,6);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (7,'2022-04-25','2022-04-15',7,8,7);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (8,'2022-06-03','2022-05-01',8,8,8);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (9,'2022-05-21','2022-05-11',9,7,9);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (10,'2022-06-08','2022-05-14',10,1,10);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (11,'2022-05-16','2022-05-12',11,1,11);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (12,'2022-05-19','2022-04-30',12,7,12);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (13,'2022-06-22','2022-05-21',13,7,13);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (14,'2022-05-29','2022-05-21',14,8,14);
INSERT INTO contrato(id_contrato, fecha_entrega, fecha_realizacion, id_pago, id_empleado, id_cliente)
VALUES (15,'2022-06-04','2022-06-03',15,1,15);



INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 1,1);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 2,2);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 3,3);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 4,4);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 5,5);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 6,6);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 7,7);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 8,8);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 9,9);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 10,10);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 11,11);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 12,12);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Válida', 13,13);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 14,14);

INSERT INTO contrato_cambios_devoluciones(garantia,
    id_contrato,
    id_cambio_devolucion)
VALUES ('Inválida', 15,15);


INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (1,1,1);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (2,2,2);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (3,3,3);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (4,4,4);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (5,5,5);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (6,6,6);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (7,7,7);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (8,8,8);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (9,9,9);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (10,10,10);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (11,11,11);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (12,12,12);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (13,13,13);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (14,14,14);
INSERT INTO departamento_funcion(id_empleado, id_departamento, id_funcion)
VALUES (15,15,15);



INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (1,'2022-04-15','12:34',1);
INSERT INTO contrato_renta(id_contrato_renta,id_contrato)
VALUES (2,2);
INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (3,'2022-04-18','13:45',6);
INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (4,'2022-04-13','11:32',8);
INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (5,'2022-05-17','15:17',14);
INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (6,'2022-04-15','12:34',4);
INSERT INTO contrato_renta(id_contrato_renta, fecha_devolucion, hora_devolucion, id_contrato)
VALUES (7,'2022-05-11','10:11',7);
INSERT INTO contrato_renta(id_contrato_renta, id_contrato)
VALUES (8,8);
INSERT INTO contrato_renta(id_contrato_renta, id_contrato)
VALUES (9,9);
INSERT INTO contrato_renta(id_contrato_renta,id_contrato)
VALUES (10,10);
INSERT INTO contrato_renta(id_contrato_renta, id_contrato)
VALUES (11,11);
INSERT INTO contrato_renta(id_contrato_renta,  id_contrato)
VALUES (13,13);
INSERT INTO contrato_renta(id_contrato_renta,  id_contrato)
VALUES (14,15);
INSERT INTO contrato_renta(id_contrato_renta,  id_contrato)
VALUES (15,3);

INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (1,4);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (2,8);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (3,12);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (4,13);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (5,9);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (6,2);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (7,6);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (8,1);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (9,3);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (10,5);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (11,7);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (12,10);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (13,14);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (14,15);
INSERT INTO contrato_venta(id_contrato_venta, id_contrato)
VALUES (15,10);




INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (15,1);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (15,3);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (14,2);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (14,3);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (13,4);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (13,8);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (12,6);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (12,7);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (12,8);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (12,9);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (11,10);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (10,1);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (10,9);
INSERT INTO servicio_extra_contrato(id_servicio_extra, id_contrato)
VALUES (9,1);

INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (10,3);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (9,4);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (8,5);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (7,6);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (6,7);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (5,8);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (4,1);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (3,2);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (2,9);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (1,10);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (15,11);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (14,12);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (13,13);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (12,14);
INSERT INTO contrato_automovil(id_contrato, id_automovil)
VALUES (11,15);



--tabla empleado_departamento
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (1,'Matutino',1,1);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (2,'Vespertino',2,2);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (3,'Matutino',3,3);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (4,'Vespertino',4,4);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (5,'Matutino',5,5);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (6,'Vespertino',6,6);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (7,'Matutino',7,7);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (8,'Vespertino',8,8);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (9,'Matutino',9,9);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (10,'Vespertino',10,10);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (11,'Matutino',11,11);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (12,'Vespertino',12,12);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (13,'Matutino',13,13);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (14,'Vespertino',14,14);
INSERT INTO empleado_departamento(id_turno,turno,id_departamento,id_empleado)
VALUES (15,'Matutino',15,15);
