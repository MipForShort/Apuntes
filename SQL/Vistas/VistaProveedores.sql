Create view VistaProveedores
as
select p.id_proveedor, p.razon_social, p.domicilio, p.telefono, p.correo, p.fecha_registro,
p.hora_registro,p.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = p.id_usuario) as LoginUser
from proveedores as p