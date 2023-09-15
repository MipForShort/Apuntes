create view VistaUsuarios
as
SELECT u.id_usuario,
CONCAT(p.nombre,' ', p.apepaterno, ' ', p.apematerno) as persona,
u.login as usuario, u.password, u.tipo,
u.fecha_registro, u.hora_registro, u.activo,
u.id_user,

--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = u.id_user) as LoginUser

--Termina subconsulta

from personas as p inner join usuarios as u
on p.id_persona = u.id_persona