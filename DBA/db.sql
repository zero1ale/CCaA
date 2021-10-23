CREATE TABLE "usuario"(
    "id_usuario" int,
    "nombre" varchar(100),
    "ape1" varchar(100),
    "ape2" varchar(100),
    "email" varchar(100),
    "rfc" varchar(13)
);
alter table usuario add primary key(id_usuario);

CREATE TABLE "comprador"(
    "id_comprador" int,
    "id_usuario" int,
    "telefono" varchar(10),
    "email_compra" varchar(100),
    "ip" varchar(15),
    "direccion" int
);
alter table comprador add primary key(id_comprador);
alter table comprador
add foreign key (id_usuario)
references usuario(id_usuario);

CREATE TABLE "tipo_tarjeta"(
    "id_tipo_tarjeta" int,
    "tipo_tarjeta" varchar(100),
    "nacional" boolean
);
alter table tipo_tarjeta add primary key(id_tipo_tarjeta);

CREATE TABLE "tarjetahabiente"(
    "id_tarjetahabiente" int,
    "id_usuario" int,
    "cuenta" varchar(16),
    "id_tipo_tarjeta" int
);
alter table id_tarjetahabiente add primary key(id_tarjetahabiente);
alter table tarjetahabiente
add foreign key (id_tipo_tarjeta)
references tipo_tarjeta(id_tipo_tarjeta);
alter table tarjetahabiente
add foreign key (id_usuario)
references usuario(id_usuario);

CREATE TABLE "tipo_operativa"(
    "id_tipo_operativa" int,
    "descripcion" text
);
alter table tipo_operativa ad primary key(id_tipo_operativa);

CREATE TABLE "transaccion"(
    "id_transaccion" int,
    "id_comprador" int,
    "comercio" text,
    "id_tipo_operativa" int,
    "id_tarjetahabiente" int,
    "monto" float,
    "fecha" date
);
alter table transaccion add primary key(id_transaccion);
alter table transaccion
add foreign key (id_comprador)
references comprador(id_comprador);
alter table transaccion
add foreign key (id_tipo_operativa)
references tipo_operativa(id_tipo_operativa);
alter table transaccion
add foreign key (id_tarjetahabiente)
references tarjetahabiente(id_tarjetahabiente);

CREATE TABLE "tipo_contracargo"(
    "id_tipo_contracargo" int,
    "descripcion" text
);
alter table tipo_contracargo add primary key(id_tipo_contracargo);

CREATE TABLE "contracargo"(
    "id_contracargo" int,
    "id_transaccion" int,
    "id_tipo_contracargo" int
);
alter table contracargo add primary key(id_contracargo);
alter table contracargo
add foreign key (id_transaccion)
references transaccion(id_transaccion);
alter table contracargo
add foreign key (id_tipo_contracargo)
references contracargo(id_tipo_contracargo);

CREATE TABLE "logi"(
  "rfc" varchar(64),
  "email" varchar(64),
  "key" varchar(64),
  "ver" boolean
);