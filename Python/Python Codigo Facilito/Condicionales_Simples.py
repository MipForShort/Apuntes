#Ejercicio práctico para sacar el promedio de un alumno

print("Sistema para calcular el promedio de un alumno.")

nombre = input("Para comenzar, ¿cuál es tu nombre?: ")

cal_mat = int(input(nombre + " ¿Cuál es tu calificación de matemáticas?: "))

cal_qui = int(input(nombre + " ¿Cuál es tu calificación de química?: "))

cal_bio = int(input(nombre + " ¿Cuál es tu calificación de biología?: "))

promedio = (cal_mat + cal_qui + cal_bio) / 3
promedio = int(promedio)

if promedio >= 7:
    print('Felicidades ' + nombre + ' "aprobaste" con un promedio de:', promedio)
"""
else:
    print("Lo siento " + nombre + " no aprobaste y tu promedio es:", promedio)
"""

print("Fin.")
