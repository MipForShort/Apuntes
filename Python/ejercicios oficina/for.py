'''
En Python, puedes usar bucles para repetir acciones o realizar tareas iterativas. 
Hay dos tipos principales de bucles: el bucle for y el bucle while.

Bucle for: Se utiliza para iterar sobre una secuencia (como una lista o una cadena de texto) 
y ejecutar un bloque de código para cada elemento en la secuencia.
Ejemplo de bucle for:

frutas = ["manzana", "banana", "cereza"]

for fruta in frutas:
    print(fruta)
    
Este bucle imprimirá cada fruta en la lista frutas.

Ahora, aquí tienes un problema relacionado con bucles para resolver:

Escribe un programa en Python que muestre todos los números pares del 1 al 20 utilizando un bucle for.
¡Inténtalo y avísame cuando hayas terminado o si necesitas ayuda!
'''

list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

for numero in list:
    if (numero % 2) == 0:
        print("Numero:" ,numero)