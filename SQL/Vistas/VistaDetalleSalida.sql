--Salidas
Create view VistaMantenimientoSalidas
as
SELECT s.id_salida as ID,
	(SELECT CONCAT('Num: ', numero_caja) as 'Caja' FROM cajas WHERE cajas.id_caja = s.id_caja) as Caja,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as 'Trabajador' FROM personas as p
	INNER JOIN trabajadores as t on t.id_persona = p.id_persona where t.id_trabajador = s.id_trabajador) as 'Trabajador',

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) FROM personas as p
	INNER JOIN clientes as c ON c.id_persona = p.id_persona where c.id_cliente = s.id_cliente) as 'Cliente',

	s.factura, s.total, s.activo as activoS, ds.activo as activoDS, s.fecha_registro, s.hora_registro,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as Usuario FROM personas as p
	INNER JOIN usuarios as u on u.id_persona = p.id_persona where u.id_usuario = s.id_usuario) as 'Usuario',
	s.descripcion
FROM salidas as s
inner join detalle_salida as ds
on s.id_salida = ds.id_salida
WHERE s.activo = 1 and ds.activo=1

-------------------------------------------------------------------------------------------
--Detalle Salidas

Create view VistaDetalleSalidas
as
SELECT ds.id_detalle_salida, s.id_salida as 'IDSalida',
	(SELECT CONCAT('Num: ', numero_caja) as 'Caja' FROM cajas WHERE cajas.id_caja = s.id_caja) as Caja,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as 'Trabajador' FROM personas as p
	INNER JOIN trabajadores as t on t.id_persona = p.id_persona where t.id_trabajador = s.id_trabajador) as 'Trabajador',

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) FROM personas as p
	INNER JOIN clientes as c ON c.id_persona = p.id_persona where c.id_cliente = s.id_cliente) as 'Cliente',

	s.factura, s.activo as activoS, ds.activo as activoDS, s.fecha_registro, s.hora_registro,

	ds.fecha_registro as 'Fecha Registro DS', ds.hora_registro as 'Hora Registro DS', ds.descripcion as 'DSdescripcion', ds.id_producto,

	(SELECT p.nombre FROM productos as p
	where p.id_producto = ds.id_producto) as 'Producto',

	ds.precio_venta, ds.cantidad, s.total,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as Usuario FROM personas as p
	INNER JOIN usuarios as u on u.id_persona = p.id_persona where u.id_usuario = ds.id_usuario) as 'Usuario'	
FROM salidas as s
inner join detalle_salida as ds
on s.id_salida = ds.id_salida
inner join productos as pr
on pr.id_producto = ds.id_producto
WHERE s.activo = 1 and ds.activo=1

--Salidas Inactivas

Create view VistaMantenimientoSalidasI
as
SELECT s.id_salida as ID,
	(SELECT CONCAT('Num: ', numero_caja) as 'Caja' FROM cajas WHERE cajas.id_caja = s.id_caja) as Caja,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as 'Trabajador' FROM personas as p
	INNER JOIN trabajadores as t on t.id_persona = p.id_persona where t.id_trabajador = s.id_trabajador) as 'Trabajador',

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) FROM personas as p
	INNER JOIN clientes as c ON c.id_persona = p.id_persona where c.id_cliente = s.id_cliente) as 'Cliente',

	s.factura, s.total, s.activo as activoS, ds.activo as activoDS, s.fecha_registro, s.hora_registro,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as Usuario FROM personas as p
	INNER JOIN usuarios as u on u.id_persona = p.id_persona where u.id_usuario = s.id_usuario) as 'Usuario',
	s.descripcion
FROM salidas as s
inner join detalle_salida as ds
on s.id_salida = ds.id_salida
WHERE s.activo = 0 and ds.activo=0

--Detalle Salidas Inactivas
Create view VistaDetalleSalidasI
as
SELECT ds.id_detalle_salida, s.id_salida as 'IDSalida',
	(SELECT CONCAT('Num: ', numero_caja) as 'Caja' FROM cajas WHERE cajas.id_caja = s.id_caja) as Caja,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as 'Trabajador' FROM personas as p
	INNER JOIN trabajadores as t on t.id_persona = p.id_persona where t.id_trabajador = s.id_trabajador) as 'Trabajador',

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) FROM personas as p
	INNER JOIN clientes as c ON c.id_persona = p.id_persona where c.id_cliente = s.id_cliente) as 'Cliente',

	s.factura, s.activo as activoS, ds.activo as activoDS, s.fecha_registro, s.hora_registro,

	ds.fecha_registro as 'Fecha Registro DS', ds.hora_registro as 'Hora Registro DS', ds.descripcion as 'DSdescripcion', ds.id_producto,

	(SELECT p.nombre FROM productos as p
	where p.id_producto = ds.id_producto) as 'Producto',

	ds.precio_venta, ds.cantidad, s.total,

	(SELECT CONCAT(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as Usuario FROM personas as p
	INNER JOIN usuarios as u on u.id_persona = p.id_persona where u.id_usuario = ds.id_usuario) as 'Usuario'	
FROM salidas as s
inner join detalle_salida as ds
on s.id_salida = ds.id_salida
inner join productos as pr
on pr.id_producto = ds.id_producto
WHERE s.activo = 0 and ds.activo=0

