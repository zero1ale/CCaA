------------------------------------------------------
-------insert usuarios--------------------------------
------------------------------------------------------
insert into usuario(nombre,ape1,ape2)
values ('Juan','Sanchez','Díaz');
insert into usuario(nombre,ape1,ape2)
values ('Ruben','Gonzales','Soto');
insert into usuario(nombre,ape1,ape2)
values ('Jose','Perez','Santos');
insert into usuario(nombre,ape1,ape2)
values ('Manuel','Avila','Ruiz');
insert into usuario(nombre,ape1,ape2)
values ('Pedro','Gonzales','Quiroz');
insert into usuario(nombre,ape1,ape2)
values ('Juan','Perez','Díaz');
insert into usuario(nombre,ape1,ape2)
values ('Alma','Medina','Suarez');
insert into usuario(nombre,ape1,ape2)
values ('Raul','Sanchez','Vidal');
insert into usuario(nombre,ape1,ape2)
values ('Hector','Montaño','Osnaya');
insert into usuario(nombre,ape1,ape2)
values ('David','Ramos','Fuentes');

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
values ('Telefonica');