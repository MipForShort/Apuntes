#Este programa va ayudar a observar como se puede interactuar 
#de distintas formas con una lista sacando el promedio de cuatro
#calificaciones de materias sin especificar nombres
print("-------------------------------------------------------------------")
print("Programa para sacar el promedio del semestre por de cuatro materias")
print("-------------------------------------------------------------------")
#Código anterior a la lista que ocupaba guardar dentro de una variable 
#al dato tipo float de la calificación que haya ingresado el usuario
# 
#calificacion_1 = float(input("Ingresa la calificación 1\n"))
#calificacion_2 = float(input("Ingresa la calificación 2\n"))
#calificacion_3 = float(input("Ingresa la calificación 3\n"))
#calificacion_4 = float(input("Ingresa la calificación 4\n"))
# #

#Observa como la lista crea prompts en la pantalla con input()
#y así los asigna a un índice, tipo float, específico de la tabla 
#que se está definiendo. Estos índices los determina el usuario, 
#cabe recordarque la numeración inicia desde [0]
lista = [
    float(input("Ingresa la calificación 1\n")),
    float(input("Ingresa la calificación 2\n")),
    float(input("Ingresa la calificación 3\n")),
    float(input("Ingresa la calificación 4\n"))
]
#Se muestra la lista
print("Calificaciones del curso\n", lista)
#Observa cómo se mostrará el promedio en pantalla sin tener que crear una variable, sólamente interactuando
#con los elementos de la lista
print(f"El promedio es:\n'{sum(lista) / 4}'")

#Se puede observar que con un fstring definido encapsula a '{sum(lista) / 4}'
#para sumar todos los valores de lista divida entre el número de índices conocidos de ella


#Ahora se hará algo más complejo, el promedio se utilizará para 
#mostrar un mensaje en base a cuánto resultó de este y se asignará
#a una variable
promedio = (sum(lista) / 4)

#En este caso se utilizarán los condicionales en una estrúctura
#de if-else utilizando la palabra reservada elif.
#
#El propósito de esto es para observa la identación en Python.
#Que define a qué sección del código se cumple para cada segmento condicional
if promedio == 100:
    print("Estás de 100")
#Se utiliza en este caso al and para cumplir doble condición
elif promedio < 100 and promedio >=80:
    print("Tu promedio sigue siendo excelente")
elif promedio < 80 and promedio >= 70:
    print("Estás que raspas")
#Ya no se tiene necesidad de comparar al promedio debido a que
#la calificación es menor a 70, por lo tanto se cierra el ciclo
#condicional con un else que no devuelva ninguna condición anterior
else:
    print("Estás reprobado")



# #
#Versión limpia del código
# #

print("-------------------------------------------------------------------")
print("Programa para sacar el promedio del semestre por de cuatro materias")
print("-------------------------------------------------------------------")

lista = [
    float(input("Ingresa la calificación 1\n")),
    float(input("Ingresa la calificación 2\n")),
    float(input("Ingresa la calificación 3\n")),
    float(input("Ingresa la calificación 4\n"))
]

print("Calificaciones del curso\n", lista)

print(f"El promedio es:\n'{sum(lista) / 4}'")

promedio = (sum(lista) / 4)

if promedio == 100:
    print("Estás de 100")
elif promedio < 100 and promedio >= 80:
    print("Tu promedio sigue siendo excelente")
elif promedio < 80 and promedio >= 70:
    print("Estás que raspas")
else:
    print("Estás reprobado")