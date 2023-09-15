Create View VistaSucursales
as
select s.id_sucursal,
s.nombre_sucursal, s.responsable, s.fecha_registro, s.hora_registro, s.activo,

--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = s.id_usuario) as LoginUser

--Termina subconsulta

from sucursales as s