#Creando un diccionario con dict()
diccionario = dict(nombre="lucas", apellido="dalto")
print(diccionario)

#Las listas no pueden ser claves y usamos el frozenset para meter conjuntos
diccionario = {frozenset(["dalto","rancio"]): "jaja"}
print(diccionario)

#Creando diccionario vacíos con fromkeys(), utilizando una lista
diccionario = dict.fromkeys(["nombre","apellido","subs"])
print(diccionario)
#La siguiente forma es distinta, enumera las keys según la cadena
#Observa que el segundo dato después de la coma por defecto es None,
#así que cuando quieras asignar un valor por defecto se escribe una coma y la cadena entre comillas
diccionario = dict.fromkeys("ABCDE", "Valor")
print(diccionario)

