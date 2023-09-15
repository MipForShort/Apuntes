Create view VistaCategoriaProductos
as
select c.id_categoria_producto, c.nombre_categoria, c.fecha_registro,
c.hora_registro, c.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = c.id_usuario) as LoginUser

--Termina subconsulta 
from categoria_productos as c