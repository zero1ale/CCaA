insert into tipo_usuario(descripcion)
values ('persona');
insert into tipo_usuario(descripcion)
values ('admin');

------------------------------------------------------
-------insert usuarios--------------------------------
------------------------------------------------------
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
values ('Juan','Sanchez','Díaz',1);
insert into usuario(nombre,ape1,ape2,id_tipo_usuario)
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
values (8,'5533447788','raul.s@msn.com','192.250.20.30',111852);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (9,'5577446688','hector.montaño@gmail.com','168.120.10.33',11052);
insert into comprador(id_usuario,telefono,email_compra,ip,id_colonia)
values (10,'6564360455','nada.abc@gmail.com','192.168.1.254',10250);

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
--------------------tarjha-------------------------
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
------------receptor de pago--------------------------
------------------------------------------------------
insert into tipo_receptor(descripcion)
values ('banco');
insert into tipo_receptor(descripcion)
values ('procesador de pago');

insert into receptor_pago(nombre,id_tipo_receptor)
values('BANAMEX',1);
insert into receptor_pago(nombre,id_tipo_receptor)
values('SANTANDER',1);
insert into receptor_pago(nombre,id_tipo_receptor)
values('BBVA',1);
insert into receptor_pago(nombre,id_tipo_receptor)
values('OPENPAY',2);
insert into receptor_pago(nombre,id_tipo_receptor)
values('MERCADO PAGO',2);
------------------------------------------------------
------------transaccion----------------------------
------------------------------------------------------
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,1,355,'2021-9-17',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (2,'openpay',1,2,648.6,'2021-10-1',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,3,1722,'2021-10-3',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (4,'openpay',1,4,487,'2021-9-29',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,5,800,'2021-8-26',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,6,600,'2021-8-26',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',3,2,250,'2021-7-22',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,8,294,'2021-9-20',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',4,9,261.6,'2021-8-11',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',5,10,384.44,'2021-9-2',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,1,576.6,'2021-9-8',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,2,277.39,'2021-10-1',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,3,929,'2021-8-19',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,4,22223.64,'2021-9-6',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',2,5,539,'2021-8-24',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,1,759,'2021-8-24',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,2,529,'2021-9-2',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,3,1400,'2021-9-7',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,4,1196,'2021-9-19',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,10,256.09,'2021-10-1',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,6,272.54,'2021-9-30',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (5,'openpay',1,7,444.38,'2021-10-3',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,8,529,'2021-8-10',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,9,355,'2021-10-5',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,10,537.77,'2021-9-10',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,6,471.18,'2021-10-1',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,7,674.37,'2021-10-5',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,3,263,'2021-9-30',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,4,260,'2021-10-3',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,5,1620,'2021-10-4',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,6,336.34,'2021-10-5',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,7,279.35,'2021-10-5',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,8,428.31,'2021-10-5',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,9,301.77,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,10,1053.19,'2021-10-5',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,6,1199,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',4,2,312.86,'2021-10-5',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,3,288,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,9,285,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,10,1177.96,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,6,480.29,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,2,829,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,3,269.02,'2021-10-1',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,4,1249,'2021-10-5',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,5,500,'2021-9-25',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',1,6,521.94,'2021-10-5',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (3,'openpay',5,7,787.5,'2021-10-5',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',5,8,632,'2021-10-5',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',5,9,562,'2021-10-5',4);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',5,10,1099,'2021-10-5',5);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,6,9482.14,'2021-10-5',3);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,7,462,'2021-10-5',2);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,8,512,'2021-10-5',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,9,415.82,'2021-9-29',1);
insert into transaccion(id_comprador,comercio,id_tipo_operativa,id_tarjetahabiente,monto,fecha, id_receptor_pago)
values (1,'openpay',1,10,1249,'2021-10-2',1);
------------------------------------------------------
------------contracargo----------------------------
------------------------------------------------------
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (1,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (2,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (3,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (4,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (5,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (6,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (7,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (8,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (9,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (10,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (11,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (12,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (13,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (14,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (15,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (16,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (17,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (18,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (19,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (20,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (21,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (22,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (23,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (24,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (25,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (26,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (27,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (28,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (29,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (30,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (31,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (32,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (33,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (34,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (35,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (36,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (37,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (38,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (39,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (40,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (41,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (42,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (43,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (44,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (45,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (46,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (47,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (48,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (49,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (50,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (51,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (52,1);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (53,2);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (54,3);
insert into contracargo(id_transaccion,id_tipo_contracargo)
values (55,1);