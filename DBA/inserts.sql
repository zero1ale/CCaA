insert into tipo_usuario(descripcion)
values ('persona');
insert into tipo_usuario(descripcion)
values ('banco');
insert into tipo_usuario(descripcion)
values ('procesador de pago');
------------------------------------------------------
-------insert usuarios--------------------------------
------------------------------------------------------
insert into usuario(nombre,ape1,ape2,id_tipo_usuario,id_tipo_usuario)
values ('Juan','Sanchez','Díaz',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario,id_tipo_usuario)
values ('Ruben','Gonzales','Soto',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Jose','Perez','Santos',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Manuel','Avila','Ruiz',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Pedro','Gonzales','Quiroz',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Juan','Perez','Díaz',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Alma','Medina','Suarez',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Raul','Sanchez','Vidal',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Hector','Montaño','Osnaya',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('David','Ramos','Fuentes',1);

------------------------------------------------------
--------------------comprador-------------------------
------------------------------------------------------
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (6,'4426879452','osc87@hotmail.com','192.168.1.28',103730);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (7,'5566447788','alma.m@gmail.com','192.154.1.55',62704);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (8,'5533447788','raul.s@msn.com','192.250.20.30',28802);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (9,'5577446688','hector.montaño@gmail.com','168.120.10.33',28265);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (10,'6564360455','nada.abc@gmail.com','192.168.1.254',21036);

------------------------------------------------------
--------------------tipo de tarjeta-------------------
------------------------------------------------------
insert into tipo_tarjeta(tipo_tarjeta,nacional)
values ('Debito',TRUE);
insert into tipo_tarjeta(tipo_tarjeta,nacional)
values ('Credito',TRUE);
insert into tipo_tarjeta(tipo_tarjeta,nacional)
values ('Debito',FALSE);
insert into tipo_tarjeta(tipo_tarjeta,nacional)
values ('Credito',FALSE);

------------------------------------------------------
--------------------comprador-------------------------
------------------------------------------------------
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (1,'55555555*****555',1);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (2,'55555555*****555',1);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (3,'44444444*****444',1);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (4,'44444444*****444',1);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (5,'33333333*****333',1);

insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (1,'55555555*****555',2);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (2,'55555555*****555',2);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (3,'44444444*****444',2);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (4,'44444444*****444',2);
insert into tarjetahabiente(id_usuario,cuenta,id_tipo_tarjeta)
values (5,'33333333*****333',2);

------------------------------------------------------
------------tipo_operativa----------------------------
------------------------------------------------------
insert into tipo_operativa(descripcion)
values ('Venta por internet');
insert into tipo_operativa(descripcion)
values ('Telefonica');
insert into tipo_operativa(descripcion)
values ('Cargo recurrente');
insert into tipo_operativa(descripcion)
values ('Contactless');
insert into tipo_operativa(descripcion)
values ('Chip');

------------------------------------------------------
------------tipo_contracargo----------------------------
------------------------------------------------------
insert into tipo_contracargo(descripcion)
values ('fraude internacional');
insert into tipo_contracargo(descripcion)
values ('fraude nacional');
insert into tipo_contracargo(descripcion)
values ('fraude visa');

------------------------------------------------------
------------tipo_operativa----------------------------
------------------------------------------------------
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha)
values ();

------------------------------------------------------
------------contracargo----------------------------
------------------------------------------------------
insert into contracargo(id_transaccion,id_tipo_contracargo)
values ();