Create view VistaSalidas
as
select s.id_salida, c.numero_caja, t.numero_empleado, cl.numero_cliente, s.factura, s.total,
s.fecha_registro, s.hora_registro, s.activo, s.descripcion,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = p.id_usuario) as LoginUser

--Termina subconsulta
from salidas as s
inner join cajas as c
on s.id_caja = c.id_caja
inner join trabajadores as t
on s.id_trabajador = t.id_trabajador
inner join clientes as cl
on s.id_cliente = cl.id_cliente