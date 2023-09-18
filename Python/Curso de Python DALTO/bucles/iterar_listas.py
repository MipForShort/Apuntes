animales = ["Gato", "Perro", "Loro", "Cocodrilo"]
numeros = [52,16,14,72]

#Recorriendo la lista animal
for animal in animales:
    print(f"La variable animal es igual a: {animal}")
    
for numero in numeros:
    resultado = numero * 10
    print(resultado)

#Iterando 2 listas al mismo tiempo
for numero, animal in zip(animales,numeros):
    print(f"Recorriendo lista 1 {numero}")
    print(f"Recorriendo lista 2 {animal}")

#Forma no óptima de recorrer una lista con su índice
for num in range(len(numeros)):
    print(num)
    
#Forma correcta de recorrer una lista con su índice
for num in enumerate(numeros):
    indice = num[0]
    valor = num[1]
    print(f"El índice es: {indice} y el valor es: {valor}")
    