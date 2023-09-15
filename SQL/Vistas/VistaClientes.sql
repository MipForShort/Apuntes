create view VistaCliente
as
select c.id_cliente,
concat(p.nombre , ' ', p.apepaterno, ' ', p.apematerno) as persona,
c.numero_cliente, c.fecha_registro, c.hora_registro, c.activo,

--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = c.id_usuario) as LoginUser

--Termina subconsulta
from clientes as c
inner join personas as p
on c.id_persona = p.id_persona