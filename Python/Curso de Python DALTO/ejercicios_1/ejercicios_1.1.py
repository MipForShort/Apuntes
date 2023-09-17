#Promedio de duración
otros_cursos_min = 2.5
otros_cursos_max = 7
otros_cursos_promedio = 4
curso_actual = 1.5

#Duración de crudos
crudo_promedio = 5
crudo_actual = 3.5

#Anotamos las diferencias en porcentajes de cada curso contra el de Dalto
dif_porcentaje_min = 100 - curso_actual / otros_cursos_min * 100
dif_porcentaje_max = 100 - curso_actual * 1000 // otros_cursos_max / 10
dif_porcentaje_prom = 100 - curso_actual / otros_cursos_promedio * 100

#Calculando el porcentaje de tiempo vacio removido del promedio de otros cursos
tiempo_vacio_promedio = 100 - otros_cursos_promedio * 1000 // crudo_promedio / 10

#Calculando el procentaje de tiempo vacio del curso actual
tiempo_vacio_curso_actual = 100 - curso_actual * 1000 // crudo_actual / 10

print("--------------------------------------------------------------------")
#Mostramos la diferencia de los porcentajes (Ejercicio A)
print("El curso actual dura")
print(f" - {dif_porcentaje_min}% menos que el más rápido")
print(f" - {dif_porcentaje_max}% menos que el más lento")
print(f" - {dif_porcentaje_min}% menos que el promedio")

print("--------------------------------------------------------------------")
#Mostramos la cantidad de espacio vacio eliminado (Ejercicio B)
print("El tiempo vacio eliminado es")
print(f" - en promedio {tiempo_vacio_promedio}%")
print(f" - de este curso {tiempo_vacio_curso_actual}%")

print("--------------------------------------------------------------------")
#Mostrando la cantidad de contenido que ofrece con 10 horas de cada curso
print("Ver 10 horas de este curso equivalen a")
print(f" - {otros_cursos_promedio * 100 // curso_actual / 10} horas de otros cursos")
print(f" - {curso_actual * 100 // otros_cursos_promedio / 10} horas del curso actual")
print("--------------------------------------------------------------------")