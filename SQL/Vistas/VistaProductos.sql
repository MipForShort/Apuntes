Create view VistaProductos
as
select p.id_producto, p.cve_producto, p.cantidad, p.descripcion, p.nombre,
cp.nombre_categoria, p.precio_compra, p.precio_venta, pr.razon_social,
p.fecha_registro, p.hora_registro, p.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = p.id_usuario) as LoginUser

--Termina subconsulta
from productos as p
inner join categoria_productos as cp
on p.id_categoria_producto = cp.id_categoria_producto
inner join proveedores as pr
on p.id_proveedor = pr.id_proveedor
