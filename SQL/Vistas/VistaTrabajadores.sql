Create View VistaTrabajadores
as
SELECT t.id_trabajador,
CONCAT (p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona,
t.numero_empleado, pu.puesto as puesto, d.nombre_departamento as departamento, t.turno,
t.fecha_registro, t.hora_registro, t.activo,
--Subconsulta para el que hizo dano
		(select concat(p.nombre, ' ', p.apepaterno, ' ', p.apematerno) as persona
			from personas as p inner join usuarios
			on p.id_persona = dbo.usuarios.id_persona
			where usuarios.id_usuario = t.id_usuario) as LoginUser

--Termina subconsulta


from trabajadores as t
inner join personas as p
on p.id_persona = t.id_persona
inner join puestos as pu
on pu.id_puesto = t.id_puesto
inner join departamentos as d
on d.id_departamento = t.id_departamento