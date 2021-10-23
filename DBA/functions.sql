
select cuenta from tarjetahabiente;

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
t.fecha >= DATE_SUB(CURDATE(), INTERVAL 90 DAY);

select count(c.id_contracargo)
from
contracargo as c, transaccion as t
where
t.fecha >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

select tr.comercio
from 
transaccion as tr, 
contracargo as c
where
tr.id_transaccion = c.id_transaccion;