Create View VistaCajas
as
select c.id_caja,
c.numero_caja, s.nombre_sucursal, c.fecha_registro, c.hora_registro, c.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = c.id_usuario) as LoginUser

--Termina subconsulta
from cajas as c
inner join sucursales as s
on c.id_sucursal = s.id_sucursal