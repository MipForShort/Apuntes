frase = input("Dime una frase y te calculo cuanto tardaria si tuvieras que decirla: ")

palabras_separadas = frase.split(" ")
cantidad_de_palabras = len(palabras_separadas)

print(f"Dijiste {cantidad_de_palabras} palabras y tardarías {cantidad_de_palabras/2} segundos en decirlo")
#print(palabras_separadas)
print(f"Dalto lo diría en {(cantidad_de_palabras)/((cantidad_de_palabras * 1.3) / 2)} segundos")