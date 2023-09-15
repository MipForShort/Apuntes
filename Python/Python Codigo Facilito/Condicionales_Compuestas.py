#Ejercicio práctico para sacar el promedio de un alumno

print("Sistema para calcular el promedio de un alumno.")

nombre = input("Para comenzar, ¿cuál es tu nombre?: ")

cal_mat = float(input(nombre + " ¿Cuál es tu calificación de matemáticas?: "))

cal_qui = float(input(nombre + " ¿Cuál es tu calificación de química?: "))

cal_bio = float(input(nombre + " ¿Cuál es tu calificación de biología?: "))

promedio = (cal_mat + cal_qui + cal_bio) / 3
#promedio = int(promedio)

if promedio >= 6:
    print('Felicidades ' + nombre + ' "aprobaste" con un promedio de:', promedio)
    print('Felicidades ' + nombre + ' "aprobaste" con un promedio de:', round(promedio, 3))

else:
    print("Lo sentimos " + nombre + " 'has reprobado' y tu promedio es:", promedio)
    print("Lo sentimos " + nombre + " 'has reprobado' y tu promedio es:", round(promedio, 1))

print("Fin.")
