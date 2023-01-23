/*
 ATENCION: EL CODIGO MARCA ADVERTENCIAS EN ROJO, SOLO ES PORQUE LA INSTRUCCION DE LLAVE FORANEA ES MUY LARGA
 PERO FUNCIONA LO SUFICIENTEMENTE BIEN, SE SIGUIÓ EL MISMO FORMATO QUE SE USA EN EL VIDEO DE DDL
 */

--LLAVES PRIMARIAS PARA LA BD
ALTER TABLE genero ADD CONSTRAINT pk_genero_id_genero PRIMARY KEY (id_genero);
ALTER TABLE rfc ADD CONSTRAINT pk_rfc_id_rfc PRIMARY KEY (id_rfc);
ALTER TABLE empleado ADD CONSTRAINT pk_empleado_id_empleado PRIMARY KEY (id_empleado);
ALTER TABLE empleado_departamento ADD CONSTRAINT pk_empleado_departamento_id_turno PRIMARY KEY (id_turno);
ALTER TABLE departamento ADD CONSTRAINT pk_departamento_id_departamento PRIMARY KEY (id_departamento);
ALTER TABLE funcion ADD CONSTRAINT pk_funcion_id_funcion PRIMARY KEY (id_funcion);
ALTER TABLE persona ADD CONSTRAINT pk_persona_id_persona PRIMARY KEY (id_persona);
ALTER TABLE cliente ADD CONSTRAINT pk_cliente_id_cliente PRIMARY KEY (id_cliente);
ALTER TABLE cambios_devoluciones ADD CONSTRAINT pk_cambios_devoluciones_id_cambio_devolucion PRIMARY KEY (id_cambio_devolucion);
ALTER TABLE tamano ADD CONSTRAINT pk_tamano_id_tamano PRIMARY KEY (id_tamano);
ALTER TABLE fuente_energia ADD CONSTRAINT pk_fuente_energia_id_fuente_energia PRIMARY KEY (id_fuente_energia);
ALTER TABLE gama ADD CONSTRAINT pk_gama_id_gama PRIMARY KEY (id_gama);
ALTER TABLE color ADD CONSTRAINT pk_color_id_color PRIMARY KEY (id_color);
ALTER TABLE modelo ADD CONSTRAINT pk_modelo_id_modelo PRIMARY KEY (id_modelo);
ALTER TABLE transmision ADD CONSTRAINT pk_transmision_id_transmision PRIMARY KEY (id_transmision);
ALTER TABLE automovil ADD CONSTRAINT pk_automovil_id_automovil PRIMARY KEY (id_automovil);
ALTER TABLE contrato ADD CONSTRAINT pk_contrato_id_contrato PRIMARY KEY (id_contrato);
ALTER TABLE domicilio ADD CONSTRAINT pk_domicilio_id_domicilio PRIMARY KEY (id_domicilio);
ALTER TABLE pago ADD CONSTRAINT pk_pago_id_pago PRIMARY KEY (id_pago);
ALTER TABLE servicio_extra ADD CONSTRAINT pk_servicio_extra_id_servicio_extra PRIMARY KEY (id_servicio_extra);
ALTER TABLE contrato_renta ADD CONSTRAINT pk_contrato_renta_id_contrato_renta PRIMARY KEY (id_contrato_renta);
ALTER TABLE contrato_venta ADD CONSTRAINT pk_contrato_venta_id_contrato_venta PRIMARY KEY (id_contrato_venta);
ALTER TABLE metodo_pago ADD CONSTRAINT pk_metodo_pago_id_mpago PRIMARY KEY (id_mpago);


--LLAVES FORANEAS PARA LA BD


ALTER TABLE empleado_departamento ADD CONSTRAINT fk_empleado_departamento_id_departamento_departamento_id_departamento
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);

ALTER TABLE empleado_departamento ADD CONSTRAINT fk_empleado_departamento_id_empleado_empleado_id_empleado
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);

ALTER TABLE departamento_funcion ADD CONSTRAINT fk_departamento_funcion_id_empleado_empleado_id_empleado
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);

ALTER TABLE departamento_funcion ADD CONSTRAINT fk_departamento_funcion_id_departamento_departamento_id_departamento
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);

ALTER TABLE departamento_funcion ADD CONSTRAINT fk_departamento_funcion_id_funcion_funcion_id_funcion
    FOREIGN KEY (id_funcion) REFERENCES funcion(id_funcion);


ALTER TABLE persona ADD CONSTRAINT fk_persona_id_genero_genero_id_genero
    FOREIGN KEY (id_genero) REFERENCES genero(id_genero);

ALTER TABLE persona ADD CONSTRAINT fk_persona_id_rfc_rfc_id_rfc
    FOREIGN KEY (id_rfc) REFERENCES rfc(id_rfc);



ALTER TABLE domicilio ADD CONSTRAINT fk_domicilio_id_persona_persona_id_persona
    FOREIGN KEY (id_persona) REFERENCES persona(id_persona);

ALTER TABLE cliente ADD CONSTRAINT fk_cliente_id_persona_persona_id_persona
    FOREIGN KEY (id_persona) REFERENCES persona(id_persona);

ALTER TABLE contrato ADD CONSTRAINT fk_contrato_id_pago_pago_id_pago
    FOREIGN KEY (id_pago) REFERENCES pago(id_pago);

ALTER TABLE contrato ADD CONSTRAINT fk_contrato_id_empleado_empleado_id_empleado
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado);

ALTER TABLE contrato ADD CONSTRAINT fk_contrato_id_cliente_cliente_id_cliente
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

ALTER TABLE contrato_cambios_devoluciones ADD CONSTRAINT fk_contrato_cambios_devoluciones_id_contrato_contrato_id_contrato
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato);

ALTER TABLE contrato_cambios_devoluciones ADD CONSTRAINT fk_contrato_cambios_devoluciones_id_cambio_devolucion_cambios_devoluciones_id_cambios_devolucion
    FOREIGN KEY (id_cambio_devolucion) REFERENCES cambios_devoluciones(id_cambio_devolucion);

ALTER TABLE tamano ADD CONSTRAINT fk_tamano_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE fuente_energia ADD CONSTRAINT fk_fuente_energia_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE gama ADD CONSTRAINT fk_gama_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE color ADD CONSTRAINT fk_color_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE modelo ADD CONSTRAINT fk_modelo_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE transmision ADD CONSTRAINT fk_transmision_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE contrato_automovil ADD CONSTRAINT fk_contrato_automovil_id_contrato_contrato_id_contrato
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato);

ALTER TABLE contrato_automovil ADD CONSTRAINT fk_contrato_id_automovil_automovil_id_automovil
    FOREIGN KEY (id_automovil) REFERENCES automovil(id_automovil);

ALTER TABLE servicio_extra_contrato ADD CONSTRAINT fk_servicio_extra_contrato_id_servicio_extra_servicio_extra_id_servicio_servicio_extra
    FOREIGN KEY (id_servicio_extra) REFERENCES servicio_extra(id_servicio_extra);

ALTER TABLE servicio_extra_contrato ADD CONSTRAINT fk_servicio_extra_contrato_id_contrato_contrato_id_contrato
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato);

ALTER TABLE metodo_pago_pago ADD CONSTRAINT fk_metodo_pago_pago_id_pago_pago_id_pago
    FOREIGN KEY (id_pago) REFERENCES pago(id_pago);

ALTER TABLE metodo_pago_pago ADD CONSTRAINT fk_metodo_pago_pago_id_mpago_metodo_pago_id_mpago
    FOREIGN KEY (id_mpago) REFERENCES metodo_pago(id_mpago);

ALTER TABLE contrato_venta ADD CONSTRAINT fk_contrato_venta_id_contrato_contrato_id_contrato
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato);

ALTER TABLE contrato_renta ADD CONSTRAINT fk_contrato_renta_id_contrato_contrato_id_contrato
    FOREIGN KEY (id_contrato) REFERENCES contrato(id_contrato);


--CHECK'S
ALTER TABLE rfc
ADD CHECK (denominacion IN ('Físca','Moral'));





ALTER TABLE genero
ADD CHECK (etiqueta IN ('M','F'));

ALTER TABLE empleado_departamento
ADD CHECK (turno IN ('Matutino','Vespertino'));

ALTER TABLE departamento
ADD CHECK (departamento IN ('Ventas', 'Administración', 'Finanzas', 'Limpieza','Atención a clientes', 'Recursos Humanos', 'Producción', 'Sistemas', 'Mercadotecnia', 'Juridico')
);

ALTER TABLE domicilio ALTER COLUMN numero TYPE INTEGER USING (numero::INTEGER);--este fue un error al momento de crear la tabla, por eso se cambió de tipo de dato
ALTER TABLE domicilio
ADD CHECK ( numero > 0 );

ALTER TABLE contrato_cambios_devoluciones
ADD CHECK (garantia IN ('Válida','Inválida'));

ALTER TABLE  cambios_devoluciones
ADD CHECK (solicitud IN ('Aceptado','Rechazado'));

ALTER TABLE  cambios_devoluciones
ADD CHECK (plazo_reclamacion IN ('Tiempo','Vencido'));

ALTER TABLE  cambios_devoluciones
ADD CHECK (especificacion IN ('Devolución','Cambio'));

ALTER TABLE pago
ADD CHECK (moneda IN ('MXN','USD'));

ALTER TABLE pago
ADD CHECK (estado IN ('Liquidado','En curso'));

ALTER TABLE metodo_pago
ADD CHECK (nombre_mpago IN ('Efectivo','Cheque','Transferencia electrónica',
                            'Pagos móviles', 'Tarjeta de crédito', 'Tarjeta de débito'));

ALTER TABLE servicio_extra
ADD CHECK (nombre_servicio IN ('Seguro', 'Mantenimiento', 'Limpieza', 'Revisión batería',
                               'Alineación y balance', 'cambio de banda de distribución',
                               'cambio de filtros:aire y combustible', 'revisión cambio de pastillas y discos de frenos',
                               'protección interna del motor',
                               'cambio de plumas de parabrisas'));

ALTER TABLE  servicio_extra
ADD CHECK(moneda = 'MXN');


ALTER TABLE automovil
ADD CHECK (no_puertas > 0);

ALTER TABLE automovil
ADD CHECK (bolsas_aire > 0);

ALTER TABLE automovil
ADD CHECK (no_asientos> 0);

ALTER TABLE automovil
ADD CHECK (precio > 0);

ALTER TABLE automovil
ADD CHECK (moneda IN ('MXN','USD'));

ALTER TABLE transmision
ADD CHECK  (tipo IN ('Manual', 'Automática', 'Doble embrague', 'Continuamente variable') );

ALTER TABLE fuente_energia
ADD CHECK(tipo_combustible IN ('Híbrido', 'Gasolina', 'Eléctrico'));

ALTER TABLE modelo
ADD CHECK (categoria IN ('Deportivo', 'Ejecutivo', 'Mini', 'Camioneta', 'Todo terreno', 'Furgoneta', 'Lujo'));

ALTER TABLE color
ADD CHECK (color IN ('Blanco','Negro','Rojo','Gris','Azul'));

ALTER TABLE gama
ADD CHECK (grado_gama IN ('Alta','Media','Baja'));

ALTER TABLE tamano
ADD CHECK (segmento IN ('Compacto', 'Familiar', 'Comercial'));



--VALORES NOT NULL'S
ALTER TABLE rfc ALTER COLUMN denominacion SET NOT NULL;
ALTER TABLE persona ALTER COLUMN nombre_persona SET NOT NULL;
ALTER TABLE persona ALTER COLUMN app_persona SET NOT NULL;
ALTER TABLE persona ALTER COLUMN correo SET NOT NULL;
ALTER TABLE genero ALTER COLUMN etiqueta SET NOT NULL;
ALTER TABLE empleado ALTER COLUMN noss SET NOT NULL;
ALTER TABLE empleado ALTER COLUMN rol SET NOT NULL;
ALTER TABLE empleado ALTER COLUMN departamento SET NOT NULL;
ALTER TABLE empleado_departamento ALTER COLUMN turno SET NOT NULL;
ALTER TABLE departamento ALTER COLUMN departamento SET NOT NULL;
ALTER TABLE funcion ALTER COLUMN nombre_funcion SET NOT NULL;
ALTER TABLE domicilio ALTER COLUMN calle SET NOT NULL;
ALTER TABLE domicilio ALTER COLUMN numero SET NOT NULL;
ALTER TABLE domicilio ALTER COLUMN colonia SET NOT NULL;
ALTER TABLE domicilio ALTER COLUMN municipio SET NOT NULL;
ALTER TABLE contrato ALTER COLUMN fecha_entrega SET NOT NULL;
ALTER TABLE contrato ALTER COLUMN fecha_realizacion SET NOT NULL;
ALTER TABLE pago ALTER COLUMN fecha_emision SET NOT NULL;
ALTER TABLE metodo_pago ALTER COLUMN nombre_mpago SET NOT NULL;


alter table cambios_devoluciones alter column fecha_reclamacion drop not null;

ALTER TABLE servicio_extra ALTER COLUMN nombre_servicio SET NOT NULL;
ALTER TABLE servicio_extra ALTER COLUMN costo SET NOT NULL;
ALTER TABLE servicio_extra ALTER COLUMN moneda SET NOT NULL;
ALTER TABLE automovil ALTER COLUMN precio SET NOT NULL;
ALTER TABLE automovil ALTER COLUMN moneda SET NOT NULL;
ALTER TABLE modelo ALTER COLUMN nombre_modelo SET NOT NULL;