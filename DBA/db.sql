-------------------------------------------------
--          CATALOGO DE ESTADOS                --
-------------------------------------------------

CREATE TABLE "estado" (
  "id_estado" int,
  "estado" varchar(45),
  primary key (id_estado)
);

-------------------------------------------------
--         CATALOGO DE MUNICIPIOS              --
-------------------------------------------------

CREATE TABLE "municipio" (
  "id_municipio" int,
  "municipio" varchar(50),
  "id_estado" int,
  primary key (id_municipio),
  foreign key (id_estado) references estado(id_estado)
);

-------------------------------------------------
--           CATALOGO DE COLONIAS              --
-------------------------------------------------

CREATE TABLE "colonia" (
  "id_colonia" int,
  "colonia" varchar(60),
  "id_municipio" int,
  "cp" varchar(5),
  primary key (id_colonia),
  foreign key (id_municipio) references municipio(id_municipio)
);

CREATE TABLE "usuario"(
    "id_usuario" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "nombre" varchar(100),
    "ape1" varchar(100),
    "ape2" varchar(100),
    "email" varchar(100),
    "rfc" varchar(13)
);

CREATE TABLE "comprador"(
    "id_comprador" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "id_usuario" int,
    "telefono" varchar(10),
    "email_compra" varchar(100),
    "ip" varchar(15),
    "id_colonia" int,
    foreign key (id_usuario) references usuario(id_usuario)
);


CREATE TABLE "tipo_tarjeta"(
    "id_tipo_tarjeta" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "tipo_tarjeta" varchar(100),
    "nacional" boolean
);

CREATE TABLE "tarjetahabiente"(
    "id_tarjetahabiente" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "id_usuario" int,
    "cuenta" varchar(16),
    "id_tipo_tarjeta" int,
    foreign key (id_tipo_tarjeta) references tipo_tarjeta(id_tipo_tarjeta),
    foreign key (id_usuario) references usuario(id_usuario)
);

CREATE TABLE "tipo_operativa"(
    "id_tipo_operativa" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "descripcion" text
);

CREATE TABLE "transaccion"(
    "id_transaccion" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "id_comprador" int,
    "comercio" text,
    "id_tipo_operativa" int,
    "id_tarjetahabiente" int,
    "monto" float,
    "fecha" date,
    foreign key (id_comprador) references comprador(id_comprador),
    foreign key (id_tipo_operativa) references tipo_operativa(id_tipo_operativa),
    foreign key (id_tarjetahabiente) references tarjetahabiente(id_tarjetahabiente)
);

CREATE TABLE "tipo_contracargo"(
    "id_tipo_contracargo" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "descripcion" text
);

CREATE TABLE "contracargo"(
    "id_contracargo" BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    "id_transaccion" int,
    "id_tipo_contracargo" int,
    foreign key (id_transaccion) references transaccion(id_transaccion),
    foreign key (id_tipo_contracargo) references tipo_contracargo(id_tipo_contracargo)
);

CREATE TABLE "logi"(
  "rfc" varchar(64),
  "email" varchar(64),
  "key" varchar(64),
  "ver" boolean
);