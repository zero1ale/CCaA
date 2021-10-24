
select cuenta from tarjetahabiente;

select tr.descripcion, rp.nombre, count(t.id_receptor_pago)
from transaccion as t, contracargo as c, receptor_pago as rp, tipo_receptor as tr
where tr.id_tipo_receptor = rp.id_tipo_receptor and
rp.id_receptor_pago = t.id_receptor_pago and
t.id_transaccion = c.id_transaccion
group by t.id_receptor_pago;


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


select tr.comercio, count(tr.id_transaccion)
from 
transaccion as tr, 
contracargo as c
where
tr.id_transaccion = c.id_transaccion
group by tr.id_transaccion;

select c.ip
from comprador as c,transaccion as t
where c.id_comprador = t.id_comprador
order by t.fecha desc 
limit 10;

select es.estado, mu.municipio, col.colonia, col.cp
from contracargo as c, transaccion as t, comprador as co,
colonia as col, municipio as mu, estado as es
where es.id_estado = mu.id_estado and
mu.id_municipio = col.id_municipio and
col.id_colonia = co.id_colonia and
co.id_comprador = t.id_comprador and
t.id_transaccion = c.id_transaccion;