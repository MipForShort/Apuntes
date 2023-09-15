Create View VistaDepartamentos
as
select d.id_departamento, d.nombre_departamento, d.extension, d.fecha_registro,
d.hora_registro, d.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = d.id_usuario) as LoginUser

--Termina subconsulta
from departamentos as d
