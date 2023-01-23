CREATE DATABASE agencia_autos;



CREATE TABLE rfc(
    id_rfc SERIAL,
    denominacion VARCHAR(16),
    cifras VARCHAR(32)
);

CREATE TABLE persona(
    id_persona SERIAL,
    nombre_persona VARCHAR(32),
    app_persona VARCHAR(32),
    apm_persona VARCHAR(32),
    telefono INTEGER,
    correo VARCHAR(128),
    id_genero SERIAL,
    id_rfc SERIAL
);


CREATE TABLE genero(
	id_genero SERIAL,
	etiqueta CHAR(1)
);

CREATE TABLE empleado(
    id_empleado SERIAL,
    rol VARCHAR(64),
    noss VARCHAR(16),
    departamento VARCHAR(16)
);

CREATE TABLE empleado_departamento(
    id_turno INTEGER,
    turno VARCHAR(16),
    id_departamento SERIAL,
    id_empleado SERIAL
);

CREATE TABLE departamento(
    id_departamento SERIAL,
    departamento VARCHAR(16)
);

CREATE TABLE departamento_funcion(
    id_empleado SERIAL,
    id_departamento SERIAL,
    id_funcion SERIAL
);

CREATE TABLE funcion(
    id_funcion SERIAL,
    nombre_funcion VARCHAR(32)
);

CREATE TABLE domicilio(
    id_domicilio SERIAL,
    calle VARCHAR(16),
    numero VARCHAR(8),
    colonia VARCHAR(64),
    municipio VARCHAR(64),
    id_persona SERIAL
);

CREATE TABLE cliente(
    id_cliente SERIAL,
    id_persona SERIAL
);

CREATE TABLE contrato(
    id_contrato SERIAL,
    fecha_entrega DATE,
    fecha_realizacion DATE,
    id_pago SERIAL,
    id_empleado SERIAL,
    id_cliente SERIAL
);

CREATE TABLE contrato_cambios_devoluciones(
    garantia VARCHAR(8),
    id_contrato SERIAL,
    id_cambio_devolucion SERIAL
);

CREATE TABLE cambios_devoluciones(
    id_cambio_devolucion SERIAL,
    especificacion VARCHAR(16),
    fecha_reclamacion DATE,
    solicitud VARCHAR(32),
    plazo_reclamacion VARCHAR(8)
);

CREATE TABLE pago(
    id_pago SERIAL,
    monto_unidades INTEGER,
    moneda VARCHAR(8),
    estado VARCHAR(16),
    fecha_emision DATE,
    total INTEGER
);

CREATE TABLE metodo_pago_pago(
    id_pago SERIAL,
    id_mpago SERIAL
);

CREATE TABLE metodo_pago(
    id_mpago SERIAL,
    nombre_mpago VARCHAR(32)
);

CREATE TABLE contrato_venta(
    id_contrato_venta SERIAL,
    id_contrato SERIAL
);

CREATE TABLE contrato_renta(
    id_contrato_renta SERIAL,
    fecha_devolucion DATE,
    hora_devolucion TIME,
    id_contrato SERIAL
);

CREATE TABLE servicio_extra_contrato(
    id_servicio_extra SERIAL,
    id_contrato SERIAL
);


CREATE TABLE servicio_extra(
    id_servicio_extra SERIAL,
    nombre_servicio VARCHAR(16),
    costo INTEGER,
    moneda VARCHAR(8)
);

CREATE TABLE contrato_automovil(
    id_contrato SERIAL,
    id_automovil SERIAL
);

CREATE TABLE automovil(
    id_automovil SERIAL,
    no_puertas INTEGER,
    bolsas_aire INTEGER,
    no_asientos INTEGER,
    precio INTEGER,
    moneda VARCHAR(8)
);

CREATE TABLE tamano(
    id_tamano SERIAL,
    segmento VARCHAR(16),
    id_automovil SERIAL
);

CREATE TABLE transmision(
    id_transmision SERIAL,
    tipo VARCHAR(64),
    id_automovil SERIAL
);

CREATE TABLE fuente_energia(
    id_fuente_energia SERIAL,
    tipo_combustible VARCHAR(16),
    id_automovil SERIAL
);

CREATE TABLE modelo(
    id_modelo SERIAL,
    nombre_modelo VARCHAR(16),
    categoria VARCHAR(16),
    id_automovil SERIAL
);

CREATE TABLE color(
    id_color SERIAL,
    color VARCHAR(16),
    id_automovil SERIAL
);

CREATE TABLE gama(
    id_gama SERIAL,
    grado_gama VARCHAR(16),
    id_automovil SERIAL
);
