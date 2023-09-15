--1 Consultar cuantos empleados hay en la tabla EMP
select * from EMP

--2 Seleccionar los empleados de la tabla emp que su salario sea mayor a 130000
select * from EMP
where SALARIO > 130000

--3 Seleccionar todos los empleador de la tabla EMP donde salario mas comision sea mayor
--o igual a 200000 
select * from EMP
where (SALARIO + COMISION) >= 200000

--4 Seleccionar todos los empleador de la tabla EMP donde salario mas comision sea mayor
--o igual a 200000 y mostrar dicha suma
select EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALT, SALARIO, 
COMISION, DEPT_NO, (salario + COMISION) as suma 
from EMP
where (SALARIO + COMISION) >= 200000
 
--5 Seleccionar los empleados de la tabla EMP que fueron datos de alta antes de 1982
select * from EMP
where FECHA_ALT <='12-31-1981'

--Tarea: DML, DDL, sus clausulas o comandos

--6 Seleccionar todos los empleados que estan trabajando en el numero de departamento 10
select * from EMP
where DEPT_NO = 10

--7 Seleccionar los empleados que estan trabajando en los numero de dpto. 10 y 30
select * from EMP
where DEPT_NO =10 or DEPT_NO = 30

--8 Seleccionar en que numero de departamento se encuentra en Madrid y Elche
select DEPT_NO, LOC
from DEPT
where LOC in ('Madrid', 'Elche')

--9 Seleccionar los empleados de la plantilla del turno matutino
select * from PLANTILLA 
where T = 'm' order by HOSPITAL_COD desc

--10 Visualizar los empleados de la plantilla del turno de matutino que tengan un salario entre
--200000 y 225000
select * from PLANTILLA
where t = 'm' and SALARIO between 200000 and 225000

--11 Mostrar los nombres de las ciudades de los nombres de departamentos que se encuentran
--en Madrid y elche
select DNOMBRE as 'Nombre dpto.'
from DEPT where LOC in ('Madrid', 'elche')

--Uso del like
--Comodines del like:
-- _ es para un solo caracter
-- % es para muchos caracteres sin importar su longitud
-- [] lo que esta contenido entre corchetes
-- [^] el caracter individual que no este dentro del corchete

--12 Seleccionar los empleados que su apellido empiece con la letra m de la tabla EMP
select * from EMP where APELLIDO like '%z'

--13 Buscar aquellos empleados cuyo apellido contenga ER de la tabla EMP
select * from EMP where APELLIDO like '%er%'

--14 Mostrar todos los empleados que contengan en su apellido las letras e y f
select * from EMP where apellido like '%[e-f]%'

--15 Mostrar todos los empleados que en su apellido no empiece con la letra A
select * from EMP where APELLIDO like '[^a]%'

--16 Mostrar todos los empleados que en su apellido empiece con la letra A, contenga de la A
--a la M y que termine en O
select * from EMP where APELLIDO like 'a%[a-m]%o' 

--17 Mostrar todos los empleados que en su apellido empiece con la letra m y que su segunda letra
--no sea A
select * from EMP where APELLIDO like 'm[^a]%'

--18 Mostrar todos los empleados que en su apellido empiece por la letra A y cuya cuarta letra
--no este comprendida entre a y g
select * from EMP where APELLIDO like 'a__[^a-g]%'

--19 Calcular la cantidad de empleados de la tabla EMP
select COUNT(*) as 'Cantidad de Empleados' from EMP

--20 Contar los empleados con oficio director mostrando la cantidad y el oficio
select COUNT(OFICIO) as 'Cantidad de Directores', OFICIO, avg(SALARIO) as 'Promedio Salario'
from EMP
group by OFICIO having OFICIO = 'director'

select * from EMP where OFICIO = 'director'

--21 Encontrar el salario mas alto, mas bajo y la diferencia entre ellos de todos los empleados
--con oficio empleado
select * from EMP where OFICIO = 'empleado'

select MAX(SALARIO) as 'Salario Maximo', MIN(SALARIO) as 'Salario Minimo', 
(MAX(SALARIO) - MIN(SALARIO)) as 'Diferencia entre ambos', OFICIO
from EMP group by OFICIO
having OFICIO = 'empleado'

--22 Visualizar los salarios mas altos de cada oficio
select MAX(SALARIO) as 'Salario Maximo', OFICIO
from EMP group by OFICIO

--23 Buscar aquellos numero de departamentos con cuatro o mas empleados trabajando
select COUNT(*) as 'Cantidad de empleados', DEPT_NO
from EMP group by DEPT_NO having count(*) >= 2

--24 Mostrar el numero de directores que existen por departemento
select COUNT(*) as 'Cantidad de directores', DEPT_NO, OFICIO
from EMP group by DEPT_NO, OFICIO having OFICIO = 'director'

--25 Mostrar todos los empleados con el nombre del departamento asignado. Visualizar los campos:
--num.depto., apellido, oficio y nombre del dpto.
create proc Departamentos
as

select e.DEPT_NO, e.APELLIDO, e.OFICIO, d.DNOMBRE
from EMP as e
inner join DEPT as d
on e.DEPT_NO = d.DEPT_NO

--26 Crear un proc almacenado que inserte datos a la tabla DEPT
Create proc InsertarDept
@dept_no int,
@dnombre nvarchar(50),
@loc nvarchar(50)
as
insert into DEPT(DEPT_NO, DNOMBRE, LOC) 
Values(@dept_no, @dnombre, @loc)

exec InsertarDept '50', 'Almacen', 'Linares'

select * from DEPT 

--27 Crear un proc para modificar la ciudad del departamento
--Modificamos el proc de actualizar
alter proc ActualizarDept
@dept_no int,
@dnombre nvarchar(50),
@loc nvarchar(50)
as
update DEPT set DNOMBRE = @dnombre, LOC = @loc
where DEPT_NO = @dept_no

exec ActualizarDept '40', 'Almacen','Morelos'

select * from DEPT

--28 Crear un proc para eliminar el departamento
create proc EliminarDept
@dept_no int
as
DELETE from DEPT
where DEPT_NO = @dept_no

exec EliminarDept '50'

select * from DEPT

--29 Crear un proc para aumentar el salario de algun empleado de la tabla EMP
select * from EMP
where OFICIO = 'director'

alter proc AumentarSalarioEmp
@emp_no int,
@aumentosalario int output
as
update EMP set SALARIO = SALARIO + @aumentosalario
where EMP_NO = @emp_no

execute AumentarSalarioEmp '7119', '5000'

--30 Crear un proc para aumentar la comision de los empleados con oficio que el usuario detemine
alter proc AumentarComision
@oficio nvarchar(50),
@comision int
as
update EMP set COMISION = COMISION + @comision
where OFICIO = @oficio

exec AumentarComision 'director', '2000'