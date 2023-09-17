
#Creando una lista con list
lista = list([34, 56, 23, True, False])

#Contamos la cantidad de elementos de una lista
#Esto se puede definir como función y se asigna el parámetro lista
print(len(lista))

#Agregamos un elemento a la lista con Append
lista.append(65)
print(lista)

#Agregamos un elemento a la lista en un un índice específico
lista.insert(2, "TOMA MAMA")
print(lista)

#Agregando varios elementos a la lista
lista.extend([False, 2030])
print(lista)

#Eliminando un elemento de la lista por su índice
lista.pop(0)
print(lista)
print(len(lista))
#Eliminando un elemento de la lista con negativo
#Observa que empieza desde el final en vez del principio
lista.pop(-1)
print(lista, "\nCantidad de elementos\n" , len(lista))

#Removiendo un elemento de la lista por su valor
lista.remove("TOMA MAMA")
print(lista)

#Eliminando todos los elementos de la lista
#lista.clear()
print(lista)

#Ordenamos la lista (si se usa el parámetro reverse=True lo ordena en reversa)
lista.sort()
print(lista)
lista.sort(reverse=True)
print(lista)

#La siguiente forma hace que la cadena que hay actual se invierta
lista.reverse()
print(lista)