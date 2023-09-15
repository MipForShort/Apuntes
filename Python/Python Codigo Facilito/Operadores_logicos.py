#Conjunción

print("Conjunción (and)\n")

num_uno = int(input("Escribe un número mayor a 2 y menor a 5: "))

if num_uno > 2 and num_uno < 5:
    print("\nEl número", num_uno, "cumple con la condición.\n")
else:
    print("\nEl número", num_uno, "no cumple con la condición.\n")

#Disyunción

print("Disyunción (or)\n")

palabra = input("Para cumplir con la condición escribe 'si' o 'yes': ")
palabra = palabra.lower()

if palabra == "si" or palabra == "yes":
    print("\nLa condición se ha cumplido.\n")
else:
    print("\nLa condición no se ha cumplido.\n")

#Negación

print("Negación (not)\n")

num_uno = int(input("Introduce un número igual a 5: "))

if not num_uno == 5:
    print("\nEl número es diferente a 5, sí cumple la condición.\n")
else:
    print("\nEl número es igual a 5, no cumple la condición.\n")

print("Fin.")
