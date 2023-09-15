#Estos son datos que tienen dentro datos simples

#Lista
#Cabe recordar que para contar una lista se empieza desde el '0' 

#Se define la lista
lista = ["Lucas Dalto", "Soy Dalto", True, 1.85]
#Imprimimos la lista
print(lista)
#Imprimimos nuestra lista en base a la posición que busquemos. OJO, fijate en el orden que se debe escribir
print(lista[0])
print(lista[1])
print(lista[2])
print(lista[3])

#Hay otro tipo de listas llamadas tuplas, sólo cambian los corchetes por '()'
#Estas no permiten que los elementos se modifiquen
tupla = ("Mario Rivera", "Python", False, 1.64)
#Imprimimos la tupla
print(tupla)

print(tupla[0])
print(tupla[1])
print(tupla[2])
print(tupla[3])

#Existen tambien los sets
#Estos tipos de elementos no tienen un orden fijo y no se pueden acceder por el índice de la lista
#print(conjunto[0]) -> Esto no se puede hacer
#Son desordenados
#Tampoco permite repetir valores, no hay duplicados
conjunto= {"Mario Mip", "Mip", True, 2.5}
#Imprimos el set
print(conjunto)

#Existen tambien los diccionarios
#Estos utilizan el nombre del elemento entre comillas simples '' para ser invocados en lugar del índice
#Muestran el dato que está entre comillas ""
#Se llaman 'clave' : "valor"
#Se separan por coma y Enter
diccionario = {
    'nombre': "Mario Meade",
    'canal' : "Mip",
    'esta_emocionado' : True,
    'altura' : 1.64,
    'dato_duplicado' : "Mip"
}

#Imprimimos nuestro diccionario
print(diccionario)

print(diccionario['nombre'])
print(diccionario['canal'])
print(diccionario["esta_emocionado"])
print(diccionario["altura"])
print(diccionario["dato_duplicado"])




