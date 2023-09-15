create view VistaPersonas
as
select p.id_persona, p.nombre, p.apepaterno, p.apematerno, p.domicilio, p.telefono, p.correo,
p.sexo, p.fecha_nac, p.estado_civil, p.estados, p.municipio, p.activo, 
p.fecha_registro, p.hora_registro,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = p.id_usuario) as LoginUser

--Termina subconsulta
from personas as p
inner join usuarios as u
on p.id_usuario = u.id_usuario

