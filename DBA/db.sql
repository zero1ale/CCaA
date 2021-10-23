CREATE TABLE "usuario"(
    "id_usuario" int,
    "nombre" varchar(100),
    "ape1" varchar(100),
    "ape2" varchar(100),
    "email" varchar(100),
    "rfc" varchar(13)
);

CREATE TABLE "comprador"(
    "id_comprador" int,
    "id_usuario" int,
    "telefono" varchar(10),
    "email_compra" varchar(100),
    "ip" varchar(15),
    "direccion" int
);

CREATE TABLE "tipo_tarjeta"(
    "id_tipo_tarjeta" int,
    "tipo_tarjeta" varchar(100),
    "nacional" boolean
);

CREATE TABLE "tarjetahabiente"(
    "id_tarjetahabiente" int,
    "id_usuario" int,
    "cuenta" varchar(16),
    "id_tipo_tarjeta" int
);

CREATE TABLE "tipo_operativa"();s