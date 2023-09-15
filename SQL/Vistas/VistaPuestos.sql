create view VistaPuestos
as
select pu.id_puesto,
pu.puesto, pu.fecha_registro, pu.hora_registro, pu.activo,

--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = pu.id_usuario) as LoginUser

--Termina subconsulta

from puestos as pu

