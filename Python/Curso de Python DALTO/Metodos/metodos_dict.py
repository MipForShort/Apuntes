diccionario = {
    "nombre" : "Lucas",
    "apellido" : "Dalto",
    "subs" : 1000000
}

#Escribe las claves que conforman el diccionario, devuelve un objeto dict_item
claves = diccionario.keys()
print(claves)

#Obtiene un elemento con get() (si no encuentra nada el programa continua)
claves = diccionario.get("asdf")
print(claves)
print("El programa continúa")

#Eliminando todo del diccionario
#diccionario.clear()
#print(diccionario)

#Eliminando un elemento del diccionario
diccionario.pop("nombre", "subs")
print(diccionario)

#Mostrando los objetos que contiene el diccionario
diccionario_iterable = diccionario.items()
print(diccionario_iterable)
