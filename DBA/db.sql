-------------------------------------------------
--          CATALOGO DE ESTADOS                --
-------------------------------------------------

CREATE TABLE estado (
  id_estado int,
  estado varchar(45),
  primary key (id_estado)
);

-------------------------------------------------
--         CATALOGO DE MUNICIPIOS              --
-------------------------------------------------

CREATE TABLE municipio (
  id_municipio int,
  municipio varchar(50),
  id_estado int,
  primary key (id_municipio),
  foreign key (id_estado) references estado(id_estado)
);

-------------------------------------------------
--           CATALOGO DE COLONIAS              --
-------------------------------------------------

CREATE TABLE colonia (
  id_colonia int,
  colonia varchar(60),
  id_municipio int,
  cp varchar(5),
  primary key (id_colonia),
  foreign key (id_municipio) references municipio(id_municipio)
);

CREATE TABLE tipo_usuario(
  id_tipo_usuario INT  AUTO_INCREMENT PRIMARY KEY,
  descripcion text
);

CREATE TABLE usuario(
    id_usuario INT  AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100),
    ape1 varchar(100),
    ape2 varchar(100),
    email varchar(100),
    rfc varchar(13),
    id_tipo_usuario int
);
alter table usuario add foreign key (id_tipo_usuario)
references tipo_usuario(id_tipo_usuario);

CREATE TABLE comprador(
    id_comprador INT  AUTO_INCREMENT PRIMARY KEY,
    id_usuario int,
    telefono varchar(10),
    email_compra varchar(100),
    ip varchar(15),
    id_colonia int
);
alter table comprador add foreign key (id_colonia) references colonia(id_colonia);
alter table comprador add foreign key (id_usuario) references usuario(id_usuario);

CREATE TABLE tipo_tarjeta(
    id_tipo_tarjeta INT  AUTO_INCREMENT PRIMARY KEY,
    tipo_tarjeta varchar(100),
    nacional boolean
);

CREATE TABLE tarjetahabiente(
    id_tarjetahabiente INT  AUTO_INCREMENT PRIMARY KEY,
    id_usuario int,
    cuenta varchar(16),
    id_tipo_tarjeta int,
    foreign key (id_tipo_tarjeta) references tipo_tarjeta(id_tipo_tarjeta),
    foreign key (id_usuario) references usuario(id_usuario)
);

CREATE TABLE tipo_operativa(
    id_tipo_operativa INT  AUTO_INCREMENT PRIMARY KEY,
    descripcion text
);

CREATE TABLE tipo_receptor(
  id_tipo_receptor INT  AUTO_INCREMENT PRIMARY KEY,
  descripcion text
);

CREATE TABLE receptor_pago(
  id_receptor_pago INT  AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100),
  id_tipo_receptor int,
  foreign key (id_tipo_receptor) references tipo_receptor(id_tipo_receptor)
);

CREATE TABLE transaccion(
    id_transaccion INT  AUTO_INCREMENT PRIMARY KEY,
    id_comprador int,
    comercio text,
    id_tipo_operativa int,
    id_tarjetahabiente int,
    monto float,
    fecha date,
    id_receptor_pago int,
    foreign key (id_comprador) references comprador(id_comprador),
    foreign key (id_tipo_operativa) references tipo_operativa(id_tipo_operativa),
    foreign key (id_tarjetahabiente) references tarjetahabiente(id_tarjetahabiente),
    foreign key (id_receptor_pago) references receptor_pago(id_receptor_pago)
);

CREATE TABLE tipo_contracargo(
    id_tipo_contracargo INT  AUTO_INCREMENT PRIMARY KEY,
    descripcion text
);

CREATE TABLE contracargo(
    id_contracargo INT  AUTO_INCREMENT PRIMARY KEY,
    id_transaccion int,
    id_tipo_contracargo int,
    foreign key (id_transaccion) references transaccion(id_transaccion),
    foreign key (id_tipo_contracargo) references tipo_contracargo(id_tipo_contracargo)
);

CREATE TABLE logi(
  rfc varchar(64),
  email varchar(64),
  clave varchar(64),
  ver boolean
);