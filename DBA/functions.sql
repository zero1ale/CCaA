
select cuenta from tarjetahabiente;

select r.nombre , count(r.id_receptor_pago)
from 
receptor_pago as r,
tipo_receptor as rt,
transaccion as tr, 
contracargo as c
where
t.id_tarjetahabiente = tr.id_tarjetahabiente and
tr.id_transaccion = c.id_transaccion and 
group by r.id_receptor_pago;


select concat(u.nombre,' ',u.ape1,' ',u.ape2) as persona, count(u.id_usuario)
from 
usuario as u, 
tarjetahabiente as t,
transaccion as tr, 
contracargo as c
where
u.id_usuario = t.id_usuario and
t.id_tarjetahabiente = tr.id_tarjetahabiente and
tr.id_transaccion = c.id_transaccion
group by u.id_usuario;

select count(c.id_contracargo)
from
contracargo as c, transaccion as t
where
t.fecha >= (select DATE_SUB(current_date(), INTERVAL 30 DAY)) and
t.id_transaccion = c.id_transaccion;

select count(c.id_contracargo)
from
contracargo as c, transaccion as t
where
t.fecha >= (select DATE_SUB(current_date(), INTERVAL 1 YEAR)) and
t.id_transaccion = c.id_transaccion;


select tr.comercio
from 
transaccion as tr, 
contracargo as c
where
tr.id_transaccion = c.id_transaccion;